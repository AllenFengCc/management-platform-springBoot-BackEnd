package org.sso.code.mapper;

import com.github.pagehelper.PageInfo;
import org.sso.code.model.RespBean;
import org.sso.code.model.Role;
import org.sso.code.model.User;

import java.util.List;

public interface UserMapper {

    List<User> getUserInfos(String keyWords);

    List<User> getUsersRoles();

    int updateEnabled(User user);

    int updateNonLocked(User user);

    int deleteUserRoles(User user);

    int insertUserRoles(User user);

    List<Role> getUserRoles(Long id);

    int deleteUserByID(User user);

    int updateTime(User user);

    int updateUserInfos(User user);

    int addUser(User user);

    List<User> getUsers();
}
