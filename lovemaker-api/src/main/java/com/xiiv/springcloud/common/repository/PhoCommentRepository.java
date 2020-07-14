package com.xiiv.springcloud.common.repository;

import com.xiiv.springcloud.common.pojo.PhoComment;
import com.xiiv.springcloud.common.pojo.Phone;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface PhoCommentRepository extends JpaRepository<PhoComment, Integer> {

    @Query
    List<PhoComment> findAllByPhone(Phone phone);

}
