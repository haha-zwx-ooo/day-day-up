package com.spec.info;

import lombok.extern.slf4j.Slf4j;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 避免使用java.util.Date与java.sql.Date类，考虑使用java.time.Instant类或java.time.LocalDateTime类替代。
 * @author 雨土
 * @version DateSpec.java, v 0.1 2023年06月16日 17:50 雨土
 */
@Slf4j
public class DateSpec {

    final static String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";

    public static void main(String[] args) {
        //TODO Date 时间可读性差，需要
        LocalDateTime now = LocalDateTime.now(ZoneId.systemDefault());
        log.info("LocalDateTime {}", now);
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern(DATE_FORMAT);
        String localDateTimeFormatter = now.format(dateTimeFormatter);
        log.info("localDateTimeFormatter: {}", localDateTimeFormatter);

        Date date = new Date();
        log.info("Date {} ", date);
        SimpleDateFormat format = new SimpleDateFormat(DATE_FORMAT);
        //format() 方法不是线程安全的
        //protected Calendar calendar 是共享变量，设置的date值会被覆盖，导致得到的结果错误
        //同时SimpleDateFormat也会创建大量的对象，加大开销，如果为了保证线程安全的话再加锁就会消耗性能
        String dateNowFormatStr = format.format(date);
        log.info("date now format: {}", dateNowFormatStr);
    }
}