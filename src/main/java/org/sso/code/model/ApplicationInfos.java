package org.sso.code.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class ApplicationInfos {
    private Long id;
    private String applicationName;
    private String typeName;
    private Long typeCode;
    private String appDescription;
    private String appKey;
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date createTime;
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date updateTime;
    private String createName;
    private String updateName;
    private Integer deleted;
}
