package com.xiiv.springcloud.common.vo;

import com.xiiv.springcloud.common.pojo.Article;
import com.xiiv.springcloud.common.pojo.PageCondition;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.Date;

@Data
@EqualsAndHashCode(callSuper=true)
public class CommentVo extends PageCondition implements Serializable {
    private int id;
    private Article article;


    private int group_id;
    private String author;
    private String responder;
    private Date time;
    private String text;
    private int likeCount;
    private int dislike;
}
