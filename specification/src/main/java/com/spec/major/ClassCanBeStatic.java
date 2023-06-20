package com.spec.major;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 未引用外部类(enclosing class)信息的内部类(nested class)应当添加static修饰以提升性能
 * @author 雨土
 * @version ClassCanBeStatic.java, v 0.1 2023年06月19日 14:28 雨土
 */
public class ClassCanBeStatic {
    private String propertyA;

    // 内部类未引用外部类信息，应当修饰为static
    static class NestedClass {
        private String propertyB;
    }

    class NestedClassWithEnclosingClassReference {

        void function() {
            // 或者在内部类中引用外部类信息
            if ("blablabla...".equals(propertyA)) {

            }
        }
    }
}