package com.xiiv.springcloud;

import com.xiiv.myrule.MySelfRule;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.ribbon.RibbonClient;

@SpringBootApplication
@EnableEurekaClient
//@RibbonClient(name = "MICROSERVICECLOUD-DEPT",configuration=MySelfRule.class)
@RibbonClient(name = "MICROSERVICECLOUD-DEPT")
//@ComponentScan(excludeFilters = {@ComponentScan.Filter(type = FilterType.ANNOTATION, value = {ExcludeComponentScan.class})})
public class Consumer9001_Application {

    public static void main(String[] args) {
        SpringApplication.run(Consumer9001_Application.class, args);
    }
}
