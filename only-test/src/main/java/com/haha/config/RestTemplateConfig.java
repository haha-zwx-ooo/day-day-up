/*
 * Ant Group
 * Copyright (c) 2004-2023 All Rights Reserved.
 */
package com.haha.config;

import org.apache.http.client.HttpClient;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.client.ClientHttpRequestFactory;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

@Configuration
public class RestTemplateConfig {

    @Bean
    public RestTemplate restTemplate(ClientHttpRequestFactory requestFactory) {
        return new RestTemplate(requestFactory);
    }

    @Bean
    public ClientHttpRequestFactory httpRequestFactory() {
        return new HttpComponentsClientHttpRequestFactory(httpClient());
    }

    @Bean
    public HttpClient httpClient() {

        Registry<ConnectionSocketFactory> registry = RegistryBuilder.<ConnectionSocketFactory> create()
                .register("http", PlainConnectionSocketFactory.getSocketFactory())
                .register("https", SSLConnectionSocketFactory.getSocketFactory()).build();

        PoolingHttpClientConnectionManager connectionManager = new PoolingHttpClientConnectionManager(
                registry);

        //设置连接池最大是500个连接
        connectionManager.setMaxTotal(500);
        //MaxPerRoute是对maxtotal的细分，每个主机的并发最大是300，route是指域名
        connectionManager.setDefaultMaxPerRoute(300);

        RequestConfig requestConfig = RequestConfig.custom()
                //返回数据的超时时间
                .setSocketTimeout(200000)
                //连接上服务器的超时时间
                .setConnectTimeout(100000)
                //从连接池中获取连接的超时时间
                .setConnectionRequestTimeout(1000).build();

        CloseableHttpClient closeableHttpClient = HttpClientBuilder.create()
                .setDefaultRequestConfig(requestConfig).setConnectionManager(connectionManager)
                .build();

        return closeableHttpClient;
    }

}