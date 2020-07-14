package com.xiiv.springcloud.service;

import com.xiiv.springcloud.common.pojo.Phone;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface PhoneService {

    Page<Phone> limitFindAll();
}
