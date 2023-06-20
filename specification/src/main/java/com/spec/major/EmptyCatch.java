package com.spec.major;

import lombok.extern.slf4j.Slf4j;

/**
 * 类型
 * 代码缺陷
 * 描述
 * catch块内容不应为空，要么对捕获的异常进行处理，要么在注释中说明此处捕获的异常无需处理的原因。
 * @author 雨土
 * @version EmptyCatch.java, v 0.1 2023年06月19日 14:35 雨土
 */
@Slf4j
public abstract class EmptyCatch {
    abstract void otherFunction() throws Exception;

    void function() {
        try {
            otherFunction();
        } catch (Exception e) {
            // 要么对捕获的异常进行处理，如记录到日志中
            log.error("{}", e);
            // 或是在注释中说明此处捕获的异常无需处理的原因
        }
    }

    //反例
    void function1() {
        try {
            otherFunction();
            // catch块内容为空，且无任何注释说明
        } catch (Exception e) {
        }
    }

}