package org.sso.code.mapper;

import org.sso.code.model.LoginData;

import java.util.List;

public interface SysLogMapper {
    List<LoginData> getRecordData();

    int deleteRecordData();
}
