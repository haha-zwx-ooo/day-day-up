package com.spec.major;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 错误的instanceOf用法使其与null检查无异，如检查某个子类是否为其父类的实例，这类用法通常都是潜在的BUG。
 * @author 雨土
 * @version BadInstanceof.java, v 0.1 2023年06月19日 14:18 雨土
 */
public class BadInstanceof {
    public static void main(String[] args) {

    }

    //正例
    void nullCheck(Cat1 garfield) {
        // 替换为判断garfield是否为null
        if (garfield != null) {
            // do something
        }
        // continue something else
    }

    //反例
    void instanceOfCheck(Cat1 garfield) {
        // instanceOf的这种用法与(garfield != null)完全一致
        // 因为当garfield不为null时，该方法调用始终会返回true，否则会返回false
        if (garfield instanceof Animal) {
            // do something
        }
        // continue something else
    }
}

class Animal {
}

class Cat1 extends Animal {
}