package com.xiiv.springcloud.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @RequestMapping("/mvc")
    public int mvc() {
        return 1;
    }

}
