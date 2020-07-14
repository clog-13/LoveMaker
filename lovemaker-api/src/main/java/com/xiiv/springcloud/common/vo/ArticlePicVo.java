package com.xiiv.springcloud.common.vo;

import com.xiiv.springcloud.common.pojo.PageCondition;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

@Data
@EqualsAndHashCode(callSuper=true)
public class ArticlePicVo extends PageCondition implements Serializable {
    private int id;

//    private Article article;

    private byte[] pic;
}
