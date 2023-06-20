package com.spec.major;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 基础类型的构造器方法自JDK9已被标记为@Deprecated，并将在未来的版本中被移除。应当使用包装类提供的valueOf方法替代构造器方法。
 * @author 雨土
 * @version BoxedPrimitiveConstructor.java, v 0.1 2023年06月19日 14:21 雨土
 */
public class BoxedPrimitiveConstructor {
    public static void main(String[] args) {
        // 反例
        Long l = new Long("10");

        //正例
        Long nl = Long.valueOf("10");

    }
}