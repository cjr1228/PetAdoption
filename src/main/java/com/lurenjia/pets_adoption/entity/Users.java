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
public class Users implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 用户id
     */
    @TableId(value = "user_id", type = IdType.AUTO)
    private Long userId;

    /**
     * 用户账户
     */
    private String userAccount;

    /**
     * 用户密码
     */
    private String userPassword;

    /**
     * 用户昵称
     */
    private String userName;

    /**
     * 用户性别:1男，0女
     */
    private Integer userSex;

    /**
     * 用户简介
     */
    private String userIntroduction;

    /**
     * 用户注册时间
     */
    private LocalDate userRegistertime;

    /**
     * 用户真实姓名
     */
    private String userRealname;

    /**
     * 用户手机号
     */
    private String userPhone;

    /**
     * 用户地址
     */
    private String userAddress;

    /**
     * 用户状态，0未申领，1申领中，2领养后未按规发布领养日志，3暂停使用
     */
    private Integer userStatus;

    /**
     * 用户类型，0普通用户，1管理员，2领养人
     */
    private Integer userType;


}
