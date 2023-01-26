package org.sso.code.mapper;

import org.springframework.stereotype.Component;
import org.sso.code.model.Role;
import org.sso.code.model.LoginUser;

import java.util.List;

@Component
public interface LoginUserMapper {
    //根据用户名查询用户
    LoginUser loadUserByUsername(String username);
    //根据用户ID查询角色
    List<Role> getRolesById(Long id);

    void addRecord(String username, String nickname);
}
