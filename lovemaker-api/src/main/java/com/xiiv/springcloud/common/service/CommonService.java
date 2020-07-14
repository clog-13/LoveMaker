package com.xiiv.springcloud.common.service;

import com.xiiv.springcloud.common.pojo.PageInfo;
import com.xiiv.springcloud.common.pojo.Result;

import java.util.List;

/**
 * @param <V> 实体类Vo
 * @param <E> 实体类
 * @param <T> id主键类型
 */
public interface CommonService<V, E, T> {

    Result<PageInfo<V>> page(V entityVo);

    Result<List<V>> list(V entityVo);

    Result<V> get(T id);

    Result<V> save(V entityVo);

    Result<T> delete(T id);
}
