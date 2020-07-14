package com.xiiv.springcloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;


@SpringBootApplication(scanBasePackages={"com.xiiv.springcloud.*"})
@EnableEurekaClient //本服务启动后会自动注册进eureka服务中
@EnableDiscoveryClient //服务发现
public class Provider8002_Application
{
	public static void main(String[] args)
	{
		SpringApplication.run(Provider8002_Application.class, args);
	}
}
