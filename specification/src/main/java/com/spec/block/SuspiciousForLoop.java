package com.spec.block;

import java.util.Collection;

/**
 * 类型
 * 业务军规
 * 描述
 * for循环中退出条件为i<=value，而循环值却为递减；或退出条件为i>=value，而循环值却为递增；通常会导致死循环。
 * @author 雨土
 * @version SuspiciousForLoop.java, v 0.1 2023年06月19日 15:03 雨土
 */
public class SuspiciousForLoop {
    //正例
    void function(Collection<String> collection) {
        for (int i = 0; i < collection.size(); i++) {
            // ...
        }
    }
}