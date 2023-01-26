package org.sso.code.service.sys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sso.code.mapper.SysLogMapper;
import org.sso.code.model.LoginData;

import java.util.List;

@Service
@Transactional
public class SysLogService {
    @Autowired
    SysLogMapper sysLogMapper;
    public List<LoginData> getRecordData() {
        return sysLogMapper.getRecordData();
    }

    public int deleteRecordData() {
        return sysLogMapper.deleteRecordData();
    }
}
