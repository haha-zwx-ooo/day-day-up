package com.spec.major;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 对没有重写Object#toString方法的类调用toString方法无法提供有意义的信息。
 * @author 雨土
 * @version ObjectToString.java, v 0.1 2023年06月19日 14:51 雨土
 */
public class ObjectToString {
    class Person {
        public String name;
    }

    //正例
    void printPerson(Person person) {
        // 输出有意义的信息
        System.out.println("Person Name: " + person.name);
    }

    //反例
    void printPerson1(Person person) {
        // 实际会调用person.hashCode()方法输出，无法提供有意义的信息
        System.out.println(person);
    }
}