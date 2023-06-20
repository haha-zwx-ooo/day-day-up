package com.spec.major;

import com.spec.common.CustomBusinessException;
import lombok.extern.slf4j.Slf4j;

/**
 * 类型
 * 代码缺陷
 * 描述
 * 避免在捕获异常后直接调用printStackTrace输出，应当继续向外抛出异常或记录到日志中。
 * @author 雨土
 * @version CatchAndPrintStackTrace.java, v 0.1 2023年06月19日 14:23 雨土
 */
@Slf4j
public class CatchAndPrintStackTrace {
    public static void main(String[] args) throws CustomBusinessException {
        //正例
        try {
            // execute some io related tasks
        } catch (Exception e) {
            // 考虑记录到日志中
            log.error("{}", e);
            // 或是继续向外抛出异常
            throw new CustomBusinessException(e);
        }

        //反例
        try {
            // execute some io related tasks
        } catch (Exception e) {
            // 避免直接调用printStackTrace进行输出
            e.printStackTrace();
        }
    }

}