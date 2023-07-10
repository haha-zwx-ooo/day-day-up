/*
 * Ant Group
 * Copyright (c) 2004-2023 All Rights Reserved.
 */
package com.haha;

/**
 *
 * @author 雨土
 * @version HttpClientUtils.java, v 0.1 2023年07月07日 15:08 雨土
 */

import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.ssl.SSLContextBuilder;
import org.apache.http.ssl.TrustStrategy;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

public class HttpClientUtils {
    /*
     * https ip地址请求忽略证书设置
     *
     * */
    public static CloseableHttpClient acceptsUntrustedCertsHttpClient()
            throws KeyStoreException, NoSuchAlgorithmException, KeyManagementException {
        HttpClientBuilder b = HttpClientBuilder.create();

        // setup a Trust Strategy that allows all certificates.
        //
        SSLContext sslContext = new SSLContextBuilder().loadTrustMaterial(null,
                new TrustStrategy() {
                    @Override
                    public boolean isTrusted(X509Certificate[] arg0, String arg1)
                            throws CertificateException {
                        return true;
                    }
                }).build();
        b.setSSLContext(sslContext);

        // don't check Hostnames, either.
        //      -- use SSLConnectionSocketFactory.getDefaultHostnameVerifier(), if you don't want to weaken
        HostnameVerifier hostnameVerifier = NoopHostnameVerifier.INSTANCE;

        // here's the special part:
        //      -- need to create an SSL Socket Factory, to use our weakened "trust strategy";
        //      -- and create a Registry, to register it.
        //
        SSLConnectionSocketFactory sslSocketFactory = new SSLConnectionSocketFactory(sslContext,
                hostnameVerifier);
        Registry socketFactoryRegistry = RegistryBuilder.create()
                .register("http", PlainConnectionSocketFactory.getSocketFactory())
                .register("https", sslSocketFactory).build();

        // now, we create connection-manager using our Registry.
        //      -- allows multi-threaded use
        PoolingHttpClientConnectionManager connMgr = new PoolingHttpClientConnectionManager(
                socketFactoryRegistry);
        connMgr.setMaxTotal(200);
        connMgr.setDefaultMaxPerRoute(100);
        b.setConnectionManager(connMgr);

        // finally, build the HttpClient;
        //      -- done!
        CloseableHttpClient client = b.build();

        return client;
    }

}
