/*
 * Ant Group
 * Copyright (c) 2004-2023 All Rights Reserved.
 */
package com.haha;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

import java.io.Serializable;

/**
 *
 * @author 雨土
 * @version User.java, v 0.1 2023年06月27日 18:02 雨土
 */
@Slf4j
@Data
public class User implements Serializable {
    static final long serialVersionUID = 1L;

    private int     id;
    private Integer id1;

    public static void main(String[] args) {
        User u = new User();
        System.out.println(u);
    }
}

