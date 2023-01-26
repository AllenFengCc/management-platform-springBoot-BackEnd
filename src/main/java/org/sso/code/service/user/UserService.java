package org.sso.code.service.user;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sso.code.mapper.UserMapper;
import org.sso.code.model.LoginUser;
import org.sso.code.model.RespBean;
import org.sso.code.model.Role;
import org.sso.code.model.User;

import java.util.List;


@Service
@Transactional
public class UserService {
    @Autowired
    UserMapper userMapper;

    public PageInfo getUserInfos(String keyWords, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<User> list = userMapper.getUserInfos(keyWords);
        for (User user : list) {
            for (User usersRole : getUsersRoles()) {
                if(user.getId().equals(usersRole.getId())){
                    user.setRoles(usersRole.getRoles());
                }
            }
        }
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    public List<User> getUsersRoles() {
        return userMapper.getUsersRoles();
    }

    public RespBean updateEnabled(User user) {
        LoginUser loginUser = ((LoginUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        if (loginUser.getId().equals(user.getId())) {
            return RespBean.error(500, "You already login, can not change your status by yourself");
        } else {
//            String date=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
            int i = userMapper.updateEnabled(user);
            if (i == 0) {
                return RespBean.error(500, "Change Status Fail");
            } else {
                userMapper.updateTime(user);
                return RespBean.success(200, "Change Status Success");
            }
        }
    }

    public RespBean updateNonLocked(User user) {
        LoginUser loginUser = ((LoginUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        if (loginUser.getId().equals(user.getId())) {
            return RespBean.error(500, "You already login, can not change your status by yourself");
        } else {
            int i = userMapper.updateNonLocked(user);
            if (i == 0) {
                return RespBean.error(500, "Change Status Fail");
            } else {
                userMapper.updateTime(user);
                return RespBean.success(200, "Change Status Success");
            }
        }
    }

    public RespBean updateUserRoles(User user) {
        List<Integer> roleIds = user.getRoleIds();
        if(roleIds == null || roleIds.size() == 0){
            return RespBean.error(500,"Illegal Activity, User Must have at least One Role");
        }else {
            // 获取用户所有角色
            List<Role> roles = userMapper.getUserRoles(user.getId());
            for (Role role : roles) {
                if(role.getRname().equals("ROLE_admin")){
                    for (Integer roleId : roleIds) {
                        if(roleId.equals(role.getId())){
                            userMapper.deleteUserRoles(user);
                            userMapper.insertUserRoles(user);
                            userMapper.updateTime(user);
                            return RespBean.success(200,"Update Roles Success");
                        }
                    }
                    return RespBean.error(500,"Can not edit Admin");
                }
            }
            userMapper.deleteUserRoles(user);
            userMapper.insertUserRoles(user);
            userMapper.updateTime(user);
            return RespBean.success(200,"Update Roles Success");
        }
    }

    public RespBean deleteUserByID(User user) {
        List<Role> userRoles = userMapper.getUserRoles(user.getId());
        for (Role userRole : userRoles) {
            if(userRole.getRname().equals("ROLE_admin")){
                return RespBean.error(500,"Can not delete Admin");
            }
        }
        userMapper.deleteUserByID(user);
        userMapper.deleteUserRoles(user);
        return RespBean.success(200,"Delete User Success");
    }

    public RespBean updateUserInfos(User user) {
        int i = userMapper.updateUserInfos(user);
        if (i == 0) {
            return RespBean.error(500, "Change Infos Fail");
        } else {
            userMapper.updateTime(user);
            return RespBean.success(200, "Change Infos Success");
        }
    }

    public RespBean addUser(User user) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String encode = encoder.encode(user.getPassword());
        user.setPassword(encode);
        List<User> listUser = userMapper.getUsers();
        for (User userL : listUser) {
            if (userL.getUsername().equals(user.getUsername())){
                return RespBean.error(500,"User already exist");
            }
        }
        int i = userMapper.addUser(user);
        if (i == 0) {
            return RespBean.error(500, "Add User Fail");
        } else {
            return RespBean.success(200, "Add User Success");
        }
    }
}
