package com.haha.xx;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.*;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import java.util.concurrent.TimeUnit;

/**
 *
 * @author 雨土
 * @version TestXx.java, v 0.1 2023年06月16日 18:15 雨土
 */
@Slf4j
@DisplayName("jupiter使用")
public class TestXx {

    @BeforeAll
    public static void before() {
        log.info("BeforeAll ----");
    }

    @AfterAll
    public static void after() {
        log.info("AfterAll ----");
    }

    @BeforeEach
    public void beforeEach() {
        log.info("测试BeforeEach");
    }

    @AfterEach
    public void afterEach() {
        log.info("测试AfterEach");
    }

    @Test
    @Tag("类别")
    @DisplayName("空白测试")
    public void test() {

    }

    @Test
    @DisplayName("不会被执行的测试方法")
    @Disabled
    public void testDisabled() {
        log.info("testDisabled 执行了");
    }

    @Test
    @Timeout(1)
    @DisplayName("测试超时报错")
    public void testTimeOut() throws InterruptedException {
        log.info("测试超时");
        TimeUnit.MILLISECONDS.sleep(1100L);
    }

    @DisplayName("测试参数注入,参数每个都会注入,执行多次")
    @ParameterizedTest
    @ValueSource(strings = { "3", "哈哈" })
    public void testParameter(String x) {
        Assertions.assertEquals("3", x);
    }

    @Test
    @DisplayName("多次执行")
    @RepeatedTest(3)
    public void repeatedTest() {
        log.info("repeatedTest多次执行的方法");
    }

}