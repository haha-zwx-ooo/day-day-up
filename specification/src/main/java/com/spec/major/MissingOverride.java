package com.spec.major;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 重写了父类方法的方法应当注解为@Override。
 * @author 雨土
 * @version MissingOverride.java, v 0.1 2023年06月19日 14:48 雨土
 */
public class MissingOverride {

    abstract class Parent {
        abstract void function();
    }

    class Son extends Parent {
        @Override
        void function() {
            // do something
        }
    }
}
