package com.xiiv.springcloud.common.pojo;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name="commodity")
public class Commodity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column
    private String c_name;
    @Column
    private String c_price;

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column(name="c_pic", columnDefinition="longblob", nullable=true)
    private byte[] pic;
}
