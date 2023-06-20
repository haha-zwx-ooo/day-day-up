package com.spec.block;

/**
 * 类型
 * 业务军规
 * 描述
 * Spring提供的org.springframework.transaction.annotation.Transactional类不应当注解在非public方法上，
 * 否则该注解将无效，这是由于Spring的切片注解方式决定的，详见：Spring Transactional
 * @author 雨土
 * @version TransactionalNonPublicMethod.java, v 0.1 2023年06月19日 15:01 雨土
 */
public class TransactionalNonPublicMethod {

    //正例
    //@Transactional
    public void writeToDB() {
        // ...
    }
}