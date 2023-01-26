package org.sso.code.model;

import lombok.Data;

@Data
public class RespBean {
    private Integer code;
    private String msg;
    private Object obj;

    private RespBean() {}
    private RespBean(Integer code, String msg, Object obj) {
        this.code = code;
        this.msg = msg;
        this.obj = obj;
    }

    public static RespBean success(Integer code, String msg) {
        return new RespBean(code,msg,null);
    }
    public static RespBean success(Integer code, String msg, Object obj) {
        return new RespBean(code,msg,obj);
    }
    public static RespBean error(Integer code, String msg) {
        return new RespBean(code,msg,null);
    }
    public static RespBean error(Integer code, String msg, Object obj) {
        return new RespBean(code,msg,obj);
    }
}
