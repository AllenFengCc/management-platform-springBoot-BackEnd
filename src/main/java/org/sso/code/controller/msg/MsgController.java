package org.sso.code.controller.msg;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.sso.code.model.MsgPub;
import org.sso.code.model.RespBean;
import org.sso.code.service.msg.MsgService;

import java.util.List;

@RestController
@RequestMapping("/msgPub")
public class MsgController {
    @Autowired
    MsgService msgService;

    @PostMapping("/pub")
    public RespBean msgPublish(@RequestBody MsgPub msgPub){
        return msgService.msgPublish(msgPub);
    }

    @PutMapping("/modifyMsg")
    public RespBean modifyMsg(@RequestBody MsgPub msgPub){
        return msgService.modifyMsg(msgPub);
    }

    @GetMapping("/getMsgInfos")
    public PageInfo getMsgInfos(String keyWords, @RequestParam(value = "pageNum", defaultValue = "1") int PageNum, @RequestParam(value = "pageSize", defaultValue = "6") int PageSize, int status){
        return msgService.getMsgInfos(keyWords,PageNum,PageSize,status);
    }

    @GetMapping("getMsgForMain")
    public List<MsgPub> getMsgForMain(){
        return msgService.getMsgForMain();
    }

    @PutMapping("deleteMsgById")
    public RespBean deleteMsgById(Integer id, Integer status){
        return msgService.deleteMsgById(id, status);
    }

    @PutMapping("resMsgById")
    public RespBean resMsgById(Integer id){
        return msgService.resMsgById(id);
    }

    @GetMapping("getMsgForEdit")
    public MsgPub getMsgForEdit(int id){
        return msgService.getMsgForEdit(id);
    }

}
