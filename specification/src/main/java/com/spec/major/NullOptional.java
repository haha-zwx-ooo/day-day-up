package com.spec.major;

import java.util.Optional;

/**
 * 类型
 * 代码缺陷
 * 描述
 * Optional.of(null)或Optional.ofNullable(null)的用法毫无意义，且大概率是对Optional.empty()的误用，使用Optional.empty()替代。
 * @author 雨土
 * @version NullOptional.java, v 0.1 2023年06月19日 14:50 雨土
 */
public class NullOptional {

    //正例
    Optional<Object> function(Object obj) {
        try {
            // do something
            return Optional.of(obj);
        } catch (Exception e) {
            return Optional.empty();
        }
    }

    //反例
    Optional<Object> function1(Object obj) {
        try {
            // do something
            return Optional.of(obj);
        } catch (Exception e) {
            // 会在运行时抛出NullPointerException
            return Optional.of(null);
            // 与Optional.empty()相同，且增加了理解成本
            // return Optional.ofNullable(null);
        }
    }
}