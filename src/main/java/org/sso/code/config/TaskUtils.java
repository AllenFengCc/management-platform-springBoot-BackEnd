package org.sso.code.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.sso.code.service.sys.SysLogService;

@Component
public class TaskUtils {
    @Autowired
    SysLogService sysLogService;

    @Scheduled(cron = "59 59 23 * * ?")
    public void doTask(){
        System.out.println("我是定时任务，每天晚上23点59分59秒，执行");
        sysLogService.deleteRecordData();
    }
}
