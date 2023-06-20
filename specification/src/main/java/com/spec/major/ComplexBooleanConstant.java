package com.spec.major;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 在编译时便可确定值的布尔表达式，这类表达式通常是潜在的BUG，考虑直接替换为常量或其他意义的判断。
 * @author 雨土
 * @version ComplexBooleanConstant.java, v 0.1 2023年06月19日 14:34 雨土
 */
public class ComplexBooleanConstant {
    //正例
    void function1(int l, int r) {
        // 考虑移除该表达式
        if (r > 8) {
            // do something
        }
    }

    void function2(int l, int r) {
        // 或其他更有意义的判断
        if (l < 4 && r > 8) {
            // do something
        }
    }

    //反例
    void function3(int l, int r) {
        // 1 < 4始终为true，可能是l < 4的笔误
        if (1 < 4 && r > 8) {
            // do something
        }
    }
}