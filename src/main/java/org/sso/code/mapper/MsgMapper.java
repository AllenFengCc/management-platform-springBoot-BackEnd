package org.sso.code.mapper;

import org.apache.ibatis.annotations.Param;
import org.sso.code.model.MsgPub;

import java.util.List;

public interface MsgMapper {
    int msgPublish(MsgPub msgPub);

    int modifyMsg(MsgPub msgPub);

    List<MsgPub> getMsgInfos(@Param("keyWords") String keyWords, @Param("status") int status, @Param("uid") Long uid);

    List<MsgPub> getMsgForMain();

    int deleteMsgById(Integer id);

    int resMsgById(Integer id);

    int realDeleteMsgById(Integer id);

    MsgPub getMsgForEdit(int id);
}
