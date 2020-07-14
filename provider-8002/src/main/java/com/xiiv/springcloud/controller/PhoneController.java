package com.xiiv.springcloud.controller;

import com.xiiv.springcloud.common.pojo.PhoComment;
import com.xiiv.springcloud.common.pojo.Phone;
import com.xiiv.springcloud.common.repository.PhoCommentRepository;
import com.xiiv.springcloud.common.repository.PhoneRepository;
import com.xiiv.springcloud.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.util.List;

@RestController
@RequestMapping("/phone")
public class PhoneController {

    @Autowired
    PhoneRepository phoneRepository;
    @Autowired
    PhoneService phoneService;
    @Autowired
    PhoCommentRepository phoCommentRepository;


    @RequestMapping("list")
    public List<Phone> list() {
        return phoneRepository.findAll();
    }

    @RequestMapping("limit")
    public Page<Phone> limit() {
        Sort sort = new Sort(Sort.Direction.ASC, "id");
        Pageable pageable = PageRequest.of(0, 8, sort);
        Page<Phone> page = phoneRepository.findAll(pageable);
        return page;
    }

    @PostMapping("add")
    public void add(@RequestBody Phone phone) {
        phoneRepository.save(phone);
    }

    @RequestMapping("get/{id}")
    public Phone get(@PathVariable("id") Integer id) {
        Phone phone = phoneRepository.getOne(id);
        byte[] bytes = {};
        phone.setHead_pic(bytes);
        return phone;
    }

    @RequestMapping("getImg/{id}")
    public Phone getImg(@PathVariable("id") Integer id) {
        return phoneRepository.getOne(id);
    }

    @RequestMapping("comment/get/{id}")
    public List<PhoComment> getComments(@PathVariable("id") Integer id) {
        Phone phone = phoneRepository.getOne(id);
        return phoCommentRepository.findAllByPhone(phone);
    }

    @PostMapping("phocom/add")
    public void comadd(@RequestBody PhoComment phoComment) {

        String text = phoComment.getText();
        int id = Integer.parseInt(text.substring(0,1));
        phoComment.setText(text.substring(1, text.length()));
        System.out.println(phoComment.getText());

        phoComment.setPhone(phoneRepository.getOne(id));
        java.util.Date d = new java.util.Date();
        Date date = new Date(d.getTime());//会丢失时分秒
        phoComment.setTime(date);
        phoCommentRepository.save(phoComment);
    }

    @RequestMapping("getname")
    public Phone getName(HttpServletRequest request) {
        String name = (String) request.getSession().getAttribute("loginUser");
        return phoneRepository.findPhoneByName(name);
    }

}
