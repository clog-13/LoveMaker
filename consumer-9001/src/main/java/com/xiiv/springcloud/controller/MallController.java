package com.xiiv.springcloud.controller;

import com.xiiv.springcloud.common.pojo.Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@RestController
public class MallController {

    private static final String REST_URL_PREFIX = "http://MICROSERVICECLOUD-MALL";

    @Autowired
    private RestTemplate restTemplate;

    @RequestMapping(value = "/mall/all")
    public List<Commodity> all() {
//        System.out.println("?");
        return restTemplate.getForObject(REST_URL_PREFIX+"/commodity/all", List.class);
    }

}
