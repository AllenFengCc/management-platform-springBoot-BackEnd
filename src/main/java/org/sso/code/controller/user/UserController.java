package org.sso.code.controller.user;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.sso.code.model.RespBean;
import org.sso.code.model.User;
import org.sso.code.service.user.UserService;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @GetMapping("/getUserInfos")
    public PageInfo getUserInfos(String keyWords, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum,@RequestParam(value = "pageSize", defaultValue = "4") int pageSize){
        return userService.getUserInfos(keyWords, pageNum, pageSize);
    }

    @GetMapping("/getUsersRoles")
    public List<User> getUsersRoles(){
        return userService.getUsersRoles();
    }

    @PutMapping("/updateEnabled")
    public RespBean updateEnabled(@RequestBody User user){
        return userService.updateEnabled(user);
    }

    @PutMapping("/updateNonLocked")
    public RespBean updateNonLocked(@RequestBody User user){
        return userService.updateNonLocked(user);
    }

    @PutMapping("/updateUserRoles")
    public RespBean updateUserRoles(@RequestBody User user){
        return userService.updateUserRoles(user);
    }

    @DeleteMapping("/DeleteUserByID")
    public RespBean deleteUserByID(@RequestBody User user){
        return userService.deleteUserByID(user);
    }

    @PutMapping("/updateUserInfos")
    public RespBean updateUserInfos(@RequestBody User user){
        return userService.updateUserInfos(user);
    }

    @PostMapping("/addUser")
    public RespBean addUser(@RequestBody User user){
        return userService.addUser(user);
    }

}
