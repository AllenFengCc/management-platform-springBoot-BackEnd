package org.sso.code.controller.role;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.sso.code.model.Role;
import org.sso.code.service.role.RoleService;

import java.util.List;

@RestController
@RequestMapping("/role")
public class RoleController {
    @Autowired
    RoleService roleService;

    @GetMapping
    public List<Role> getRoles(){
        return roleService.getRoles();
    }
}
