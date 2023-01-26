package org.sso.code.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.sso.code.model.RespBean;

@RestController
//@CrossOrigin // 解决真跨域 前后端不在一台电脑上 （该项目.loginProcessingUrl("/doLogin")接口没有写，只是配了个名字）
public class LoginController {
    @GetMapping("/loginHint")
    public RespBean loginHint() {
        return RespBean.error(401,"Please Login First !");
    }
}
