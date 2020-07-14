package com.xiiv.springcloud.service.impl;

import com.xiiv.springcloud.common.pojo.Phone;
import com.xiiv.springcloud.common.repository.PhoneRepository;
import com.xiiv.springcloud.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Service
@Transactional
public class PhoneServiceImpl implements PhoneService {

    @Autowired
    PhoneRepository phoneRepository;

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public Page<Phone> limitFindAll() {
        Sort sort = new Sort(Sort.Direction.ASC, "id");
        Pageable pageable = PageRequest.of(0, 8, sort);
        Page<Phone> list = phoneRepository.findAll(pageable);

        return list;
    }
}
