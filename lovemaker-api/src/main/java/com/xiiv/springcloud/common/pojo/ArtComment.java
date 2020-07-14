package com.xiiv.springcloud.common.pojo;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "art_comment")
public class ArtComment implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne(cascade={CascadeType.MERGE,CascadeType.REFRESH}, optional=false)
    @JoinColumn(name = "article_id")
    @JsonBackReference
    private Article article;

    @Column
    private int group_id;
    @Column
    private String author;
    @Column
    private String responder;
    @Column
    private Date time;
    @Column
    @Lob
    private String text;
    @Column(name = "like_count")
    private int likeCount;
    @Column
    private int dislike;
}
