package com.xiiv.springcloud.common.pojo;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "pho_comment")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class PhoComment implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne(cascade={CascadeType.MERGE,CascadeType.REFRESH}, optional=false)
    @JoinColumn(name = "phone_id")
    @JsonBackReference
    private Phone phone;

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

    public void setPhone(Phone phone) {
        this.phone = phone;
    }
}
