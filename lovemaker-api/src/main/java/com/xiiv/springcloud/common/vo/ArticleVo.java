package com.xiiv.springcloud.common.vo;

import com.xiiv.springcloud.common.pojo.PageCondition;
import com.xiiv.springcloud.common.pojo.User;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.Date;

@Data
@EqualsAndHashCode(callSuper=true)
public class ArticleVo extends PageCondition implements Serializable {
    private int id;
    private User user;

    private String title;
    private Date time;
    private String text;
    private int likeCount;
    private int dislike;
    private int readCounts;

//    private List<Comment> commentsList;
}
