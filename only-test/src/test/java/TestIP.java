/*
 * Ant Group
 * Copyright (c) 2004-2023 All Rights Reserved.
 */

import com.haha.Application;
import com.haha.OpType;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;

/**
 *
 * @author 雨土
 * @version TestIP.java, v 0.1 2023年07月07日 14:52 雨土
 */
@SpringBootTest(classes = Application.class)
public class TestIP {
    @Resource
    RestTemplate restTemplate;

    @Test
    public void testIp() {

        String url = "http://cip.cc";

        //SimpleClientHttpRequestFactory requestFactory = new SimpleClientHttpRequestFactory();
        //requestFactory.setProxy(
        //        new Proxy(Proxy.Type.SOCKS, new InetSocketAddress("127.0.0.1", 13659)  //设置代理服务
        //        ));
        //restTemplate.setRequestFactory(requestFactory);
        //发送请求
        String result = restTemplate.getForObject(url, String.class);
        System.out.println(result);  //打印响应结果
    }

    @Test
    public void testIPs() {
        String req = "{'flowId':'6ac2d396623040678dec61718fa563f4'}";
        String s = restTemplate.postForObject(
                "http://139.196.115.96:32555/jupiter/api/v2/jobflow/status", req, String.class);
        System.out.println(s);
    }

    @Test
    public void testEnum() {
        System.out.println(OpType.OP_PSI_V3.name());
    }

}