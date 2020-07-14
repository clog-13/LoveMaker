package com.xiiv.springcloud.common.repository;

import com.xiiv.springcloud.common.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    @Query
    User findUserByUsername(String username);
}
