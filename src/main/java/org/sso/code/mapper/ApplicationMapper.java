package org.sso.code.mapper;


import org.sso.code.model.ApplicationInfos;

import java.util.List;

public interface ApplicationMapper {

    List<ApplicationInfos> getAppsInfos(String keyWords);

    int deleteApplicationByID(ApplicationInfos applicationInfos);

    void updateTime(ApplicationInfos applicationInfos);

    int updateApplicationByID(ApplicationInfos applicationInfos);

    int addApplication(ApplicationInfos applicationInfos);
}
