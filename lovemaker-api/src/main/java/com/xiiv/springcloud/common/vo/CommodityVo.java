package com.xiiv.springcloud.common.vo;

import com.xiiv.springcloud.common.pojo.PageCondition;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

@Data
@EqualsAndHashCode(callSuper=true)
public class CommodityVo extends PageCondition implements Serializable {

    private int id;
    private String c_name;
    private String c_price;

    private byte[] pic;
}
