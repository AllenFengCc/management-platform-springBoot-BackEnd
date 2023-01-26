package org.sso.code.controller.sys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.sso.code.model.LoginData;
import org.sso.code.service.sys.SysLogService;

import java.util.List;

@RestController
@RequestMapping("/sysSetting")
public class SysLogController {
    @Autowired
    SysLogService sysLogService;

    @GetMapping("/getRecord")
    public List<LoginData> getRecordData(){
        return sysLogService.getRecordData();
    }
}
