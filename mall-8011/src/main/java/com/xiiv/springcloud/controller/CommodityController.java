package com.xiiv.springcloud.controller;

import com.xiiv.springcloud.common.pojo.Commodity;
import com.xiiv.springcloud.common.service.CommonService;
import com.xiiv.springcloud.repository.CommodityRepository;
import com.xiiv.springcloud.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/commodity")
public class CommodityController {

    @Autowired
    CommodityRepository commodityRepository;
//    CommodityService commodityService;

    @RequestMapping("all")
    public List<Commodity> all() {
        return commodityRepository.findAll();
    }

}
