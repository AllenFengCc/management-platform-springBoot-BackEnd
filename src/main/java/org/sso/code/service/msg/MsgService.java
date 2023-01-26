package org.sso.code.service.msg;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sso.code.mapper.MsgMapper;
import org.sso.code.model.LoginUser;
import org.sso.code.model.MsgPub;
import org.sso.code.model.RespBean;

import java.util.List;

@Service
@Transactional
public class MsgService {
    @Autowired
    MsgMapper msgMapper;
    public RespBean msgPublish(MsgPub msgPub) {
        LoginUser loginUser = ((LoginUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        msgPub.setUid(loginUser.getId());
        int i = msgMapper.msgPublish(msgPub);
        if (i==0 && msgPub.getStatus().equals(1)){
            return RespBean.error(500,"Message Publish Fail");
        }else if(i==0 && msgPub.getStatus().equals(2)){
            return RespBean.error(500,"Message Save Fail");
        } else if(i!=0 && msgPub.getStatus().equals(1)){
            return RespBean.success(200,"Message Publish Success",msgPub);
        } else if(i!=0 && msgPub.getStatus().equals(2)){
            return RespBean.success(200,"Message Save Success",msgPub);
        } else {
            return RespBean.success(200,"Message Publish Success",msgPub);
        }
    }

    public RespBean modifyMsg(MsgPub msgPub) {
        int i = msgMapper.modifyMsg(msgPub);
        if (i==0 && msgPub.getStatus().equals(1)){
            return RespBean.error(500,"Message Modify Fail");
        }else if(i==0 && msgPub.getStatus().equals(2)){
            return RespBean.error(500,"Message Modify and Save Fail");
        } else if(i!=0 && msgPub.getStatus().equals(1)){
            return RespBean.success(200,"Message Modify Success",msgPub);
        } else if(i!=0 && msgPub.getStatus().equals(2)){
            return RespBean.success(200,"Message Modify and Save Success",msgPub);
        } else {
            return RespBean.success(200,"Message Modify Success",msgPub);
        }
    }

    public PageInfo getMsgInfos(String keyWords, int pageNum, int pageSize, int status) {
        PageHelper.startPage(pageNum,pageSize);
        LoginUser loginUser = ((LoginUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        List<MsgPub> msgList = msgMapper.getMsgInfos(keyWords,status,loginUser.getId());
        PageInfo pageInfo = new PageInfo(msgList);
        return pageInfo;
    }

    public List<MsgPub> getMsgForMain() {
        return msgMapper.getMsgForMain();
    }

    public RespBean deleteMsgById(Integer id, Integer status) {
        if (status.equals(3)){
            int i = msgMapper.realDeleteMsgById(id);
            if(i==0){
                return RespBean.error(500,"Delete Message Fail");
            }else {
                return RespBean.success(200,"Delete Message Success");
            }
        }
        int i = msgMapper.deleteMsgById(id);
        if(i==0){
            return RespBean.error(500,"Delete Message Fail");
        }else {
            return RespBean.success(200,"Delete Message Success, You can check at Recycle Bin");
        }
    }

    public RespBean resMsgById(Integer id) {
        int i = msgMapper.resMsgById(id);
        if(i==0){
            return RespBean.error(500,"Restore Message Fail");
        }else {
            return RespBean.success(200,"Restore Message Success, You can check at Draft Box");
        }
    }

    public MsgPub getMsgForEdit(int id) {
        return msgMapper.getMsgForEdit(id);
    }
}
