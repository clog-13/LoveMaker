package com.xiiv.springcloud.cfgbeans;

import com.netflix.loadbalancer.AvailabilityFilteringRule;
import com.netflix.loadbalancer.IRule;
import com.netflix.loadbalancer.RandomRule;
import com.netflix.loadbalancer.RoundRobinRule;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

@Configuration
public class ConfigBean {

    @Bean
    @LoadBalanced
    public RestTemplate getRestTemplate() {
        return new RestTemplate();
    }

    @Bean
    public IRule myRule() {
//        return new RoundRobinRule();              //轮询
//        return new RandomRule();                  //随机
        return new AvailabilityFilteringRule();       //过滤掉多次故障的服务
//        return WeightedResponseTimeRule();        //根据响应时间计算权重
//        return RetryRule();                       //先按照RoundRobinRule,某服务失败多次后直接跳过
//        return BestAvailableRule();               //先过滤掉多次故障的服务,然后选一个并发量最小的
//        return ZoneAvoidanceRule();               //根据区域选择
    }
}