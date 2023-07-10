/*
 * Ant Group
 * Copyright (c) 2004-2023 All Rights Reserved.
 */

import org.junit.jupiter.api.Test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author 雨土
 * @version DateUtilTest.java, v 0.1 2023年07月05日 16:32 雨土
 */
public class DateUtilTest {
    private static final String DIRECT_DATE_PARTITION_PATTERN   = "\\d{8}$";
    private static final String DIRECT_DATE_PARTITION_PATTERN_1 = "\\d(8)$";

    @Test
    public void test() {
        getDirectPartition("(20230508,20230511)");
    }

    private static String getDirectPartition(String partitionBy) {
        Matcher m = Pattern.compile(DIRECT_DATE_PARTITION_PATTERN).matcher(partitionBy);
        return getOneFromMatchers(m, partitionBy);
    }

    private static String getOneFromMatchers(Matcher m, String partitionBy) {
        if (m.find()) {
            return m.group(0);
        }
        throw new RuntimeException("数据表分区解析失败，无任何合法匹配, partitionBy=" + partitionBy);
    }

    @Test
    public void testyyyyMMddHHmmsss() {
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String format1 = format.format(new Date());
        System.out.println(format1);
    }

    @Test
    public void ip() throws Exception {
        String ip = IpChecker.getIp();
        System.out.println(ip);
    }

    public static class IpChecker {

        public static String getIp() throws Exception {
            //curl cip.cc
            URL whatismyip = new URL("http://cip.cc");
            BufferedReader in = null;
            try {
                in = new BufferedReader(new InputStreamReader(whatismyip.openStream()));
                String ip = in.readLine();
                return ip;
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }
}