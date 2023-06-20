package com.spec.major;

import java.time.LocalDateTime;
import java.time.ZoneId;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 避免使用默认应用系统时区的方法，因为系统时区可能会随着机器与JVM环境发生变化，应当显式地指定时区信息。
 * @author 雨土
 * @version JavaTimeDefaultTimeZone.java, v 0.1 2023年06月19日 14:46 雨土
 */
public class JavaTimeDefaultTimeZone {
    public static void main(String[] args) {

    }

    //正例
    void function() {
        LocalDateTime now = LocalDateTime.now(ZoneId.of("UTC+8"));
        LocalDateTime nowWithSystemDefault = LocalDateTime.now(ZoneId.systemDefault());
    }

    //反例
    void function1() {
        // 默认应用系统时区，可能随着运行环境发生变化
        LocalDateTime now = LocalDateTime.now();
    }
}