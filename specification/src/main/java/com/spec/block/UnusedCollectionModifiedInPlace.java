package com.spec.block;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * [Block] UnusedCollectionModifiedInPlace
 * 类型
 * 代码缺陷
 * 描述
 * java.util.Collections中的一些方法，如sort和shuffle，会修改集合本身。
 * 如果在一个新创建的集合上调用了这些方法，又没有在之后使用这个新创建的集合，
 * 那么这个方法调用显然是冗余的，或者很有可能是忘记返回新创建的集合的引用。
 * @author 雨土
 * @version UnusedCollectionModifiedInPlace.java, v 0.1 2023年06月19日 14:59 雨土
 */
public class UnusedCollectionModifiedInPlace {

    //正例
    public Collection<String> sort(Collection<String> foos) {
        List<String> sortedFoos = new ArrayList<>(foos);
        Collections.sort(sortedFoos);
        return sortedFoos;
    }

    //反例
    public Collection<String> sort1(Collection<String> foos) {
        Collections.sort(new ArrayList<>(foos));
        return foos;
    }
}