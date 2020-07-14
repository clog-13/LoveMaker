package com.xiiv.springcloud.controller;

import com.xiiv.springcloud.common.pojo.Article;
import com.xiiv.springcloud.common.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/art")
public class ArticleController {

    @Autowired
    ArticleRepository articleRepository;

    @RequestMapping("list")
    public List<Article> list() {
        return articleRepository.findAll();
    }

    @RequestMapping("get/{id}")
    public Article get(@PathVariable("id") Integer id) {
        return articleRepository.getOne(id);
    }
}
