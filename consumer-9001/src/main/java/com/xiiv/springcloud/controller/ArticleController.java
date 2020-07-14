package com.xiiv.springcloud.controller;

import com.xiiv.springcloud.common.pojo.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class ArticleController {

    @Autowired
    private RestTemplate restTemplate;

    private static final String REST_URL_PREFIX = "http://MICROSERVICECLOUD-DEPT";

    @RequestMapping("art/get/{id}")
    public String get(@PathVariable("id") Integer id, Model model) {
//        Article article = restTemplate.getForObject(REST_URL_PREFIX+"/art/get/"+id, Article.class);
//        model.addAttribute("article", article);

        return "article";
    }
}
