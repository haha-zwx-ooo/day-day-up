package com.spec.block;

/**
 * subString(int)方法返回包括从传入参数下标开始的子字符串，因此传递0作为参数会返回与原字符串相同的字符串。
 * @author 雨土
 * @version SubstringOfZero.java, v 0.1 2023年06月19日 15:04 雨土
 */
public class SubstringOfZero {
    String function(String str) {
        // 使用正确的下标
        return str.substring(1);
    }

    //反例
    String function0(String str) {
        // 传入0会返回与原字符串相同的字符串，无意义
        return str.substring(0);
    }
}