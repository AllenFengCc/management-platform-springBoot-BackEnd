package org.sso.code.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class MsgPub {
    private Long id;
    private String title;
    private String mdContent;
    private String htmlContent;
    private Long uid;
    private Long cid;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date publishTime;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date updateTime;
    private Integer status;
    private Integer views;
    private User user;
}
