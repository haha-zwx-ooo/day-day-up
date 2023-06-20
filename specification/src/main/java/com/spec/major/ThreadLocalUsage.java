package com.spec.major;

/**
 * 类型
 * 代码缺陷
 * 描述
 * ThreadLocal变量应当声明为static，储存在常量池中。
 * 如果ThreadLocal变量被声明为非静态变量，会导致在每个线程中维护ThreadLocal中储存的变量对所有线程的映射表，
 * 不仅造成极大的资源浪费，降低程序性能，还有可能导致潜在的内存泄漏。
 * @author 雨土
 * @version ThreadLocalUsage.java, v 0.1 2023年06月19日 14:54 雨土
 */
public class ThreadLocalUsage {
    //正例
    // ThreadLocal变量应当声明为static
    private static final ThreadLocal<Integer> threadLocalCount = new ThreadLocal<>();

}