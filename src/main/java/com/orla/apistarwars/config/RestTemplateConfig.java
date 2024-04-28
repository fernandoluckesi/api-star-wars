package com.orla.apistarwars.config;

import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

public class RestTemplateConfig extends RestTemplate {

    public RestTemplateConfig() {
        SimpleClientHttpRequestFactory factory = new SimpleClientHttpRequestFactory();
        factory.setOutputStreaming(false);
        this.setRequestFactory(factory);
    }
}
