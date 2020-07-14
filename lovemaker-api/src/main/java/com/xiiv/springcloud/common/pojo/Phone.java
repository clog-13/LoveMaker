package com.xiiv.springcloud.common.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
@Table(name="phone")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Phone implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "phone", orphanRemoval = true)
    @JsonIgnore
    private List<PhoComment> commentsList;

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column(name="head_pic", columnDefinition="longblob")
//    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    private byte[] head_pic;

    @Column
    private String name;
    @Column
    private String cpu;
    @Column
    private String ram;
    @Column
    private String memory;
    @Column
    private String camera;
    @Column
    private String battery;
    @Column
    private String screen_size;
    @Column
    private String resolution;
    @Column
    private String prices;
    @Column
    private String listing_date;
    @Column
    private String screen_type;
    @Column
    private String os;
    @Column
    private String color;
    @Column
    private String screen_pixel;
    @Column
    private String cpu_fre;
    @Column
    private String core_num;
    @Column
    private String gpu;
    @Column
    private String ram_size;
    @Column
    private String rom_size;
    @Column
    private String charging;
    @Column
    private String four_g;
    @Column
    private String three_g;
    @Column
    private String fre_band;
    @Column
    private String bluetooth;
    @Column
    private String port;
    @Column
    private String post_camera;
    @Column
    private String front_camera;
    @Column
    private String sensor_type;
    @Column
    private String sensor_model;
    @Column
    private String size;
    @Column
    private String weight;
    @Column
    private String texture;


}

