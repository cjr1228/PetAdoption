package com.lurenjia.pets_adoption.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.time.LocalDate;

/**
 * <p>
 * 
 * </p>
 *
 * @author lurenjia
 * @since 2023-03-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class Notices implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 公告编号
     */
    @TableId(value = "notice_id", type = IdType.AUTO)
    private Long noticeId;

    /**
     * 公告类型：1公示，2领养日志
     */
    private Integer noticeType;

    /**
     * 发布人编号
     */
    private Long userId;

    /**
     * 发布人姓名
     */
    private String userRealname;

    /**
     * 发布时间
     */
    private LocalDate noticeDate;

    /**
     * 标题
     */
    private String notticeTitle;

    /**
     * 内容
     */
    private String noticeContext;

    /**
     * 文章图片
     */
    private String noticeImage;

}
