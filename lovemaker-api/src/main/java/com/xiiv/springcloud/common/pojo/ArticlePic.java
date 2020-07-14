//package com.xiiv.springcloud.common.pojo;
//
//import com.fasterxml.jackson.annotation.JsonBackReference;
//import lombok.Data;
//
//import javax.persistence.*;
//import java.io.Serializable;
//
//@Data
//@Entity
//@Table(name = "article_pic")
//public class ArticlePic implements Serializable {
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private int pic_id;
//
//    @ManyToOne(cascade={CascadeType.MERGE,CascadeType.REFRESH}, optional=false)
//    @JoinColumn(name = "article_id")
//    @JsonBackReference
//    private Article article;
//
//    @Lob
//    @Basic(fetch = FetchType.LAZY)
//    @Column(name="pic", columnDefinition="longblob", nullable=true)
//    private byte[] pic;
//
//}
