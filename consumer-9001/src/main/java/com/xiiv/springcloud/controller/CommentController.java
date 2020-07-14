package com.xiiv.springcloud.controller;

import com.xiiv.springcloud.common.pojo.PhoComment;
import com.xiiv.springcloud.common.pojo.Phone;
import com.xiiv.springcloud.common.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class CommentController {

    @Autowired
    RestTemplate restTemplate;

    private static final String REST_URL_PREFIX = "http://MICROSERVICECLOUD-DEPT";

    @PostMapping("/phocom/add/")
    @ResponseBody
    public int add(PhoComment phoComment, HttpServletRequest request) {
        String name = (String) request.getSession().getAttribute("loginUser");

        int id = (int) request.getSession().getAttribute("curP");

        Phone phone = restTemplate.getForObject(REST_URL_PREFIX+"/phone/get/"+id, Phone.class);
        phoComment.setPhone(phone);
        phoComment.setAuthor(name);

        String tmp = id+phoComment.getText();
        System.out.println(tmp);
        phoComment.setText(tmp);

        restTemplate.postForObject(REST_URL_PREFIX+"/phone/phocom/add", phoComment, Void.class);

        return id;
    }
}
