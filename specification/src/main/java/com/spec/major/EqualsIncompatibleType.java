package com.spec.major;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 在不可能为同一个类的实例之间调用equals方法将始终返回false，通常情况下都是潜在的BUG。
 * @author 雨土
 * @version EqualsIncompatibleType.java, v 0.1 2023年06月19日 14:39 雨土
 */
public class EqualsIncompatibleType {

    //正例
    void function1(Cat tom, Dog spike) {
        if (tom.owner.equals(spike.owner)) {
            // do something
        }
    }

    //反例
    void function2(Cat tom, Dog spike) {
        // Cat类与Dog类不可能相等，方法调用始终会返回false
        if (tom.equals(spike)) {
            // do something
        }
    }
}

class Person {
}

class Cat {
    public Person owner;
}

class Dog {
    public Person owner;
}