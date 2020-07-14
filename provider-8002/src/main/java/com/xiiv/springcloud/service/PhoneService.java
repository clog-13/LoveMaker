package com.xiiv.springcloud.service;

import com.xiiv.springcloud.common.pojo.Phone;
import org.springframework.data.domain.Page;

public interface PhoneService {

    Page<Phone> limitFindAll();
}
