package com.lurenjia.pets_adoption;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@SpringBootApplication
//声明式注解：使用注解注册servlet、filter、listener
@ServletComponentScan
//声明式注解：使用注解注册事务管理器
@EnableTransactionManagement
//声明式注解：使用注解注册缓存操作
@EnableCaching
//启用springmvc
@EnableWebMvc
public class PetsAdoptionApplication {

    public static void main(String[] args) {
        SpringApplication.run(PetsAdoptionApplication.class, args);
    }

}
