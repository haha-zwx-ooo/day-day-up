/*
 * Ant Group
 * Copyright (c) 2004-2023 All Rights Reserved.
 */
package com.haha.utils;

import org.apache.commons.lang3.StringUtils;

/**
 *
 * @author 雨土
 * @version CommonLang3Test.java, v 0.1 2023年06月25日 10:57 雨土
 */
public class CommonLang3Test {

    public static void main(String[] args) {
        String xx = "psi1686561412194_20230625103818_773";
        String s = StringUtils.substringAfter(xx, "_");
        System.out.println(s);

        System.out.println(OpType.OP_PSI_V3.opMsg);
        System.out.println(OpType.OP_PSI_V3.name());
    }
}