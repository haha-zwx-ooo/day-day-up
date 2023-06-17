package com.spec.major;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 连续对同一个条件变量进行同样的判断有可能是潜在的逻辑错误。
 * @author 雨土
 * @version AlreadyChecked.java, v 0.1 2023年06月16日 18:08 雨土
 */
public class AlreadyChecked {
    public static void main(String[] args) {

    }

    /**
     * 正例
     * @param conditionA
     * @param conditionB
     */
    public void function(boolean conditionA, boolean conditionB) {
        if (conditionA) {
        } else if (conditionB) {
        }
    }

    /**
     * 反例
     * @param conditionA
     * @param conditionB
     */
    public void function0(boolean conditionA, boolean conditionB) {
        if (conditionA) {
        } else if (conditionA) {
        }
    }
}