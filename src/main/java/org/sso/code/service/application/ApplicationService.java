package org.sso.code.service.application;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sso.code.mapper.ApplicationMapper;
import org.sso.code.model.ApplicationInfos;
import org.sso.code.model.RespBean;

import java.util.List;

@Service
@Transactional
public class ApplicationService {
    @Autowired
    ApplicationMapper applicationMapper;

    public PageInfo getAppsInfos(String keyWords, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<ApplicationInfos> list = applicationMapper.getAppsInfos(keyWords);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    public RespBean deleteApplicationByID(ApplicationInfos applicationInfos) {
        int i = applicationMapper.deleteApplicationByID(applicationInfos);
        if (i == 0) {
            return RespBean.error(500, "Delete Application Fail");
        } else {
            applicationMapper.updateTime(applicationInfos);
            return RespBean.success(200, "Delete Application Success");
        }
    }

    public RespBean updateApplicationByID(ApplicationInfos applicationInfos) {
        int i = applicationMapper.updateApplicationByID(applicationInfos);
        if (i == 0) {
            return RespBean.error(500, "Update Application Fail");
        } else {
            applicationMapper.updateTime(applicationInfos);
            return RespBean.success(200, "Update Application Success");
        }
    }

    public RespBean addApplication(ApplicationInfos applicationInfos) {
        Long typeCode = applicationInfos.getTypeCode();
        if(typeCode==1){
            applicationInfos.setTypeName("IOS");
        }else if(typeCode==2){
            applicationInfos.setTypeName("Android");
        }else if(typeCode==3){
            applicationInfos.setTypeName("PC");
        }else if(typeCode==4){
            applicationInfos.setTypeName("FirefoxOS");
        }else if(typeCode==5){
            applicationInfos.setTypeName("BlackBerry");
        } else {
            return RespBean.error(500, "Type Error");
        }
        int i = applicationMapper.addApplication(applicationInfos);
        if (i == 0) {
            return RespBean.error(500, "Add Application Fail");
        } else {
            applicationMapper.updateTime(applicationInfos);
            return RespBean.success(200, "Add Application Success");
        }
    }
}
