package com.spec.major;

/**
 *
 * 类型
 * 代码缺陷
 * 描述
 * Object.hashCode的约定中要求：如果两个对象是相等的，那么对二者分别调用hashCode方法也应当返回同样的结果。
 * 如果重写equals方法却不重写hashCode方法会导致如HashSet，HashMap等依赖hashCode方法的集合无法正常工作。
 * @author 雨土
 * @version EqualsHashCode.java, v 0.1 2023年06月19日 14:37 雨土
 */
public class EqualsHashCode {
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (!this.getClass().isInstance(obj)) {
            return false;
        } else {
            // ...
            return false;
        }
    }

    @Override
    public int hashCode() {
        int hashCode = 0;
        // ...
        return hashCode;
    }
}