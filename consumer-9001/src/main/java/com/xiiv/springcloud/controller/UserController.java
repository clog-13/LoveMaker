package com.xiiv.springcloud.controller;

import com.xiiv.springcloud.common.pojo.User;
import com.xiiv.springcloud.common.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    RestTemplate restTemplate;
    @Autowired
    UserRepository userRepository;

    private static final String REST_URL_PREFIX = "http://MICROSERVICECLOUD-DEPT";

    @PostMapping("/user/register")
    public String register(User user) {
        restTemplate.postForObject(REST_URL_PREFIX+"/user/add", user, Void.class);
        return "redirect:/login";
    }

    @PostMapping(value = "/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Map<String,Object> map, HttpSession session) {

//        User user = userRepository.findUserByUsername(username);
        User user = restTemplate.getForObject(REST_URL_PREFIX+"/user/getname/"+username, User.class);

        if(user != null && user.getPassword().equals(password)) {
            session.setAttribute("loginUser",username);
            session.setAttribute("loginId", user.getId());
                return "redirect:/";
        }else {
            map.put("msg","用户名或密码错误");
            return "login";
        }

    }
}
