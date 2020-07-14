package com.xiiv.springcloud.config;

import com.xiiv.springcloud.component.LoginHandlerInterceptor;
import com.xiiv.springcloud.component.MyLocaleResolver;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.Arrays;
import java.util.List;

//@Configuration
//public class MvcConfig implements WebMvcConfigurer {
public class MvcConfig {

//    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        List<String> list = Arrays.asList("/user/*", "/article/*", "comment/*");

        registry.addInterceptor(new LoginHandlerInterceptor())
                .addPathPatterns(list);
    }


//    @Bean
    public WebMvcConfigurer webMvcConfigurer() {
        WebMvcConfigurer webMvcConfigurer = new WebMvcConfigurer() {
            @Override
            public void addViewControllers(ViewControllerRegistry registry) {
                registry.addViewController("/").setViewName("ed_login");
            }

        };
        return webMvcConfigurer;
    }

//    @Bean
    public LocaleResolver localeResolver() {
        return new MyLocaleResolver();
    }

}
