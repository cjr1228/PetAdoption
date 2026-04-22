package com.lurenjia.pets_adoption.dto;

import com.lurenjia.pets_adoption.entity.Adoptions;
import com.lurenjia.pets_adoption.entity.Pets;
import com.lurenjia.pets_adoption.entity.Users;
import lombok.Data;


@Data
public class AdoptionLogsDTO extends Adoptions {


    /**
     * 宠物信息
     */
    private Pets pet;

    /**
     * 领养人信息
     */
    private Users user;
}
