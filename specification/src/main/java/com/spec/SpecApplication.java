package com.spec;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

/**
 *
 * @author 雨土
 * @version SpecApplication.java, v 0.1 2023年06月16日 17:45 雨土
 */
@Slf4j
@SpringBootApplication
public class SpecApplication {
    public static void main(String[] args) {
        ConfigurableApplicationContext context = SpringApplication.run(SpecApplication.class, args);
        log.info(" SpecApplication run success {}", context);
    }
}