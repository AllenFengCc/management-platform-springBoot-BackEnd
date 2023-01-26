package org.sso.code.mapper;

import org.springframework.stereotype.Component;
import org.sso.code.model.Authority;

import java.util.List;

@Component
public interface AuthorityMapper {
    List<Authority> getAuthorityRoles();
}
