package com.lurenjia.pets_adoption.utils;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 * 作者： lurenjia
 * 时间： 2023/3/16-9:21
 * 描述： 代码生成器
 */
@Component
@Slf4j
public class CodeGenerator {
    private static String url = "jdbc:mysql://localhost:3306/pets_adoption?serverTimezone=Asia/Shanghai&useUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull&useSSL=false&allowPublicKeyRetrieval=true";

    private static String driver="com.mysql.cj.jdbc.Driver";

    private static String username="root";

    private static String password="lurenjia";


    public static void main(String[] args) {
        log.info(driver);
        log.info(url);
        log.info(username);
        log.info(password);

        // 代码生成器
        AutoGenerator mpg = new AutoGenerator();

        // 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setDbType(DbType.MYSQL);
        dsc.setUrl(url);
        dsc.setDriverName(driver);
        dsc.setUsername(username);
        dsc.setPassword(password);
        mpg.setDataSource(dsc);

        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        String projectPath = System.getProperty("user.dir");
        //文件生成的位置
        gc.setOutputDir(projectPath + "/src/main/java");
        //作者
        gc.setAuthor("lurenjia");
        //是否在文件夹中打开
        gc.setOpen(false);
        //是否覆盖已有的文件
        gc.setFileOverride(true);
        //设置业务层接口名
        //gc.setServiceName("%sService");
        //设置id生成策略
        //gc.setIdType(IdType.AUTO);
        mpg.setGlobalConfig(gc);

        // 包配置
        PackageConfig pc = new PackageConfig();
        pc.setModuleName(null);
        //所属父包名
        pc.setParent("com.lurenjia.pets_adoption");
        pc.setEntity("entity");
        pc.setMapper("mapper");
        pc.setService("service");
        pc.setServiceImpl("service.impl");
        pc.setController("controller");
        mpg.setPackageInfo(pc);

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        //设置字段去掉表前缀
        //strategy.setTablePrefix();

        //表名的下划线转为驼峰
        strategy.setNaming(NamingStrategy.underline_to_camel);

        //字段的下划线转为驼峰
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
        //启用lombok模块自动代理set/get、
        strategy.setEntityLombokModel(true);
        //启用rest风格的控制器
        strategy.setRestControllerStyle(true);

        //需要生成的表
        //strategy.setInclude("orders","order_detail");


        mpg.setStrategy(strategy);

        // 执行生成
        mpg.execute();
    }

}