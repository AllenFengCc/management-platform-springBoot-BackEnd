package org.sso.code.controller.application;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.sso.code.model.ApplicationInfos;
import org.sso.code.model.RespBean;
import org.sso.code.service.application.ApplicationService;

@RestController
@RequestMapping("/application")
public class ApplicationController {
    @Autowired
    ApplicationService applicationService;

    @GetMapping("/getAppsInfos")
    public PageInfo getAppsInfos(String keyWords, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "15") int pageSize){
        return applicationService.getAppsInfos(keyWords, pageNum, pageSize);
    }

    @PutMapping("/deleteApplicationByID")
    public RespBean deleteApplicationByID(@RequestBody ApplicationInfos applicationInfos){
        return applicationService.deleteApplicationByID(applicationInfos);
    }

    @PutMapping("/updateApplicationByID")
    public RespBean updateApplicationByID(@RequestBody ApplicationInfos applicationInfos){
        return applicationService.updateApplicationByID(applicationInfos);
    }

    @PostMapping("/addApplication")
    public RespBean addApplication(@RequestBody ApplicationInfos applicationInfos){
        return applicationService.addApplication(applicationInfos);
    }
}
