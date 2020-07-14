package com.xiiv.springcloud.controller;

import com.xiiv.springcloud.common.pojo.User;
import com.xiiv.springcloud.common.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping("add")
    public void userAdd(@RequestBody User user) {
        userRepository.save(user);
    }

    @RequestMapping("getname/{username}")
    public User getname(@PathVariable("username") String username) {
        return userRepository.findUserByUsername(username);
    }

}
