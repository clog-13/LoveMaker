package com.xiiv.springcloud.common.pojo;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "article")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Article implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

//    @ManyToOne(cascade={CascadeType.MERGE,CascadeType.REFRESH}, optional=false)
//    @JoinColumn(name = "user_id")
//    @JsonBackReference
//    private User user;

    @Column
    private String title;
    @Column
    private Date time;
    @Column(nullable = false)
    @Lob
    private String text;
    @Column(name = "like_count")
    private int likeCount;
    @Column
    private int dislike;
    @Column(name = "read_counts")
    private int readCounts;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "article", orphanRemoval = true)
    @JsonIgnore
    private List<ArtComment> commentsList;

}
