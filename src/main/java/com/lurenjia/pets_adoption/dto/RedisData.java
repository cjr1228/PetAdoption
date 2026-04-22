package com.lurenjia.pets_adoption.dto;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class RedisData{
    /**
     * 逻辑过期时间
     */
    private LocalDateTime expireTime;
    /**
     * 缓存数据
     */
    private Object data;
}
