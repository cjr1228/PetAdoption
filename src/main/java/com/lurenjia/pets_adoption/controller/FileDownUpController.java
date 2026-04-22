package com.lurenjia.pets_adoption.controller;

import cn.hutool.core.util.StrUtil;
import com.lurenjia.pets_adoption.dto.R;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.TimeUnit;


@RestController
@RequestMapping("/common")
@EnableCaching
@Slf4j
public class FileDownUpController {

    @Value("${pets_adoption.file-path}")
    private String imagePath;

    @Autowired
    private StringRedisTemplate redisTemplate;

    /**
     * 文件下载：
     * 把图片写入响应流中。
     */
    @GetMapping("/download")
    public void download(String name, HttpServletResponse response) {
        try {
            //获取响应流
            ServletOutputStream outputStream = response.getOutputStream();
            //读取图片到字节数组中
            byte[] image = getImageFileBytes(name);
            //图片字节数据写入响应流中
            outputStream.write(image);
            outputStream.flush();
            outputStream.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 通过文件名获取文件的字节数组
     * @param name
     * @return
     * @throws IOException
     */
    private byte[] getImageFileBytes(String name) throws IOException {
        //缓存中没有

        //从缓存中拿
        String value = redisTemplate.opsForValue().get("pet:image:"+name);
        if(StrUtil.isNotBlank(value)){
            byte[] resp = value.getBytes();
        }

        byte[] image = FileUtils.readFileToByteArray(new File(imagePath + name));
        log.info("从文件中拿到文件：{}",name);
        //放入缓存中
        redisTemplate.opsForValue().set("pet:image:"+name, Arrays.toString(image),5L, TimeUnit.MINUTES);
        return image;
    }

    /**
     * 上传文件
     * @param file
     * @return
     */
    @PostMapping("/upload")
    public R<String> upLoad(MultipartFile file) {
        //获取原始文件名
        String fileName = file.getOriginalFilename();
        //获取到扩展名
        String suffix = fileName.substring(fileName.lastIndexOf("."));

        //生成唯一文件名
        String realFileName = UUID.randomUUID().toString() + suffix;

        //获取到配置文件中的文件储存地址，判断文件夹是否存在
        File dir = new File(imagePath);
        if (!dir.exists()) {
            //文件夹不存在则新建
            dir.mkdir();
            log.info("新建文件夹：{}", imagePath);
        }

        //文件保存到指定目录下
        try {
            log.info("文件开始保存:{}", realFileName);
            file.transferTo(new File(imagePath + realFileName));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        //把文件名响应和客户端
        return R.success(realFileName);
    }
}
