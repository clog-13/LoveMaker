package com.xiiv.springcloud.common.vo;

import com.xiiv.springcloud.common.pojo.Article;
import com.xiiv.springcloud.common.pojo.PageCondition;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.List;

@Data
@EqualsAndHashCode(callSuper=true)
public class UserVo extends PageCondition implements Serializable {

    private int id;
    private String userName;
    private String password;
    private String headPic;

    private List<Article> articlesList;

}
