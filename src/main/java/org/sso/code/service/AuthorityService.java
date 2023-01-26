package org.sso.code.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.sso.code.mapper.AuthorityMapper;
import org.sso.code.model.Authority;

import java.util.List;

@Service
public class AuthorityService {

    @Autowired
    AuthorityMapper authorityMapper;

    public List<Authority> getAuthorityRoles() {
        return authorityMapper.getAuthorityRoles();
    }
}
