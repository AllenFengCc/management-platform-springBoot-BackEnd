package org.sso.code.service.role;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sso.code.mapper.RoleMapper;
import org.sso.code.model.Role;

import java.util.List;

@Service
@Transactional
public class RoleService {
    @Autowired
    RoleMapper roleMapper;

    public List<Role> getRoles() {
        return roleMapper.getRoles();
    }
}
