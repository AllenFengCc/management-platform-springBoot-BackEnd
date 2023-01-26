package org.sso.code.model;

import lombok.Data;

import java.util.Date;

@Data
public class SystemSetting {
    private Long id;
    private Long parentId;
    private String sname;
    private Date createTime;
}
