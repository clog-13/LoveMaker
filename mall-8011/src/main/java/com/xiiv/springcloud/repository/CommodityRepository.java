package com.xiiv.springcloud.repository;

import com.xiiv.springcloud.common.pojo.Commodity;
import com.xiiv.springcloud.common.repository.CommonRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CommodityRepository extends JpaRepository<Commodity, Integer> {
}
