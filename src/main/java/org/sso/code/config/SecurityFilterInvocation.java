package org.sso.code.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;
import org.sso.code.model.Authority;
import org.sso.code.model.Role;
import org.sso.code.service.AuthorityService;

import java.util.Collection;
import java.util.List;

@Component
/**
 *  根据 访问的url 返回需要的角色
 */
public class SecurityFilterInvocation implements FilterInvocationSecurityMetadataSource {

    @Autowired
    AuthorityService authorityService;
    // 通配比较
    AntPathMatcher antPathMatcher = new AntPathMatcher();

    @Override
    public Collection<ConfigAttribute> getAttributes(Object o) throws IllegalArgumentException {
        // 获取访问的Url
        String requestUrl = ((FilterInvocation) o).getRequestUrl();
        List<Authority> authorityList = authorityService.getAuthorityRoles();
        for (Authority authority : authorityList) {
            if(antPathMatcher.match(authority.getAccessPath(),requestUrl)){
                List<Role> roles = authority.getRoles();
                String strArr[] = new String[roles.size()];
                int index = 0;
                for (Role role : roles) {
                    strArr[index] = role.getRname();
                    index++;
                }
                // 返回需要的角色
                return SecurityConfig.createList(strArr);
            }
        }
        return SecurityConfig.createList("RULE_LOGIN");
    }

    @Override
    public Collection<ConfigAttribute> getAllConfigAttributes() {
        return null;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return true;
    }
}
