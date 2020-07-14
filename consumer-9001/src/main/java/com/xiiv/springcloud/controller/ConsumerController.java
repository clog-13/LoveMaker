//package com.xiiv.springcloud.controller;
//
//import com.xiiv.springcloud.common.pojo.ArticlePic;
//import com.xiiv.springcloud.common.pojo.Result;
//import com.xiiv.springcloud.common.pojo.User;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.client.RestTemplate;
//import org.springframework.web.multipart.MultipartFile;
//
//import java.io.IOException;
//import java.util.List;
//
//@RestController
//public class ConsumerController {
//
//    @Autowired
////    private ArticlePicRepository articlePicRepository;
////    private static final String REST_URL_PREFIX = "http://localhost:8001";
//    private static final String REST_URL_PREFIX = "http://MICROSERVICECLOUD-DEPT";
//
//    @Autowired
//    private RestTemplate restTemplate;
//
//    @RequestMapping(value = "/consumer/user/list")
//    public Result<List<User>> findall() {
//        return restTemplate.getForObject(
//                REST_URL_PREFIX+"/user/list", Result.class);
////        return userService.orderFind();
//    }
//
//}
