import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.util.Arrays;

/**
 * String类的format()方法用于创建格式化的字符串以及连接多个字符串对象。
 * @author 雨土
 * @version StringFormatTest.java, v 0.1 2023年06月21日 11:04 雨土
 */
@Slf4j
public class StringFormatTest {
    String x = "x";
    String y = "y";

    @Test
    @DisplayName("String.format测试")
    public void testFormat() {
        //格式化
        String xFormat = String.format("HI,%s", x);
        log.info("{}", xFormat);
        String str = String.format("Hi,%s:%s.%s", "王南", "王力", "王张");
        log.info("{}", str);
        String format = String.format("%s%s", "1", "2");
        log.info("{}", format);
    }

    public static Object[][] getRiskDetailInfonNormalDP() {
        return new Object[][] { { "N01", 3400002L, 1, 10, false, false },
                                { "N02", 3400002L, 1, 10, true, false },
                                { "N03", 3400002L, 1, 10, false, true },
                                { "N04", 3400002L, 1, 10, true, true },
                                { "N05", 3400002L, 3, 10, false, false },
                                { "N06", 3400002L, 1, 100, false, false }, };
    }

    @Test
    public void testx() {
        Object[][] riskDetailInfonNormalDP = getRiskDetailInfonNormalDP();
        System.out.println(Arrays.toString(riskDetailInfonNormalDP));
        String x = new String();

        Integer.parseInt("");
        Integer.valueOf("");
    }

    @Test
    public void strConcat() {
        String x = "x";
        x = x.concat("1");
        System.out.println(x);
    }
}