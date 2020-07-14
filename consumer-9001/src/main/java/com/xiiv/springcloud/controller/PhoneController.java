package com.xiiv.springcloud.controller;

import com.xiiv.springcloud.common.pojo.PhoComment;
import com.xiiv.springcloud.common.pojo.Phone;
import com.xiiv.springcloud.common.repository.PhoCommentRepository;
import com.xiiv.springcloud.common.repository.PhoneRepository;
import org.apache.commons.lang.ObjectUtils;
import org.bouncycastle.math.raw.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

@Controller
public class PhoneController {

    @Autowired
    private RestTemplate restTemplate;
    @Autowired
    PhoneRepository phoneRepository;

    private static final String REST_URL_PREFIX = "http://MICROSERVICECLOUD-DEPT";

    @PostMapping("phone/add")
    @ResponseBody
    public String add(Phone phone,
                      @RequestParam(name="fileField",required=false) MultipartFile fileField) throws IOException {
        phone.setHead_pic(fileField.getBytes());
//        phoneRepository.save(phone);
        restTemplate.postForObject(REST_URL_PREFIX+"/phone/add", phone, Void.class);
        int counts = phoneRepository.countAllByIdIsNotNull();
        String res = counts+"";
        return res;
//        return "success";
    }

    @RequestMapping("phone/get/{id}")
    public String get(@PathVariable("id") Integer id, Model model, HttpSession session) {

        Phone phone = restTemplate.getForObject(REST_URL_PREFIX+"/phone/get/"+id, Phone.class);
        model.addAttribute("phone", phone);

        List<PhoComment> phoComments = restTemplate.getForObject(REST_URL_PREFIX+"/phone/comment/get/"+id, List.class);
        model.addAttribute("comments", phoComments);

        List<Phone> temp = restTemplate.getForObject(REST_URL_PREFIX+"/phone/list", List.class);
        List<Phone> phones = new ArrayList<>();
//        List<Map<String, Object>> temp = restTemplate.getForObject(REST_URL_PREFIX+"/phone/list", List.class);
//        List<Map<String, Object>> phones = new ArrayList<>();
        int size = 0;
        while(size < 8 && size < temp.size()) {
            phones.add(temp.get(size++));
        }
        model.addAttribute("phones", phones);

        session.setAttribute("curP", id);
//        Phone phone = phoneRepository.getOne(id);
//        model.addAttribute("phone", phone);
//        List<PhoComment> comments = phoCommentRepository.findAllByPhone(phone);
//        model.addAttribute("comments", comments);

        int c = restTemplate.getForObject(REST_URL_PREFIX+"/mvc", Integer.class);
        if(c == 1) return "bd01";
        else return "bd02";

//        return "bd";
    }

    @RequestMapping(value="phone/getImg/{id}",method= RequestMethod.GET)
    public void getPhotoById(@PathVariable("id") Integer id, final HttpServletResponse response) throws Exception{
//        Phone phone = phoneRepository.getOne(id);
        Phone phone = restTemplate.getForObject(REST_URL_PREFIX+"/phone/getImg/"+id, Phone.class);

        byte[] data = phone.getHead_pic();
        response.setContentType("image/jpeg");
        response.setCharacterEncoding("UTF-8");
        OutputStream outputSream = response.getOutputStream();
//        outputSream.write(data);
//        outputSream.flush();
        InputStream in = new ByteArrayInputStream(data);
        int len = 0;
        byte[] buf = new byte[1024];
        while ((len = in.read(buf, 0, 1024)) != -1) {
            outputSream.write(buf, 0, len);
        }
        outputSream.close();
    }

}
