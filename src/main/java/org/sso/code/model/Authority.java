package org.sso.code.model;

import lombok.Data;

import java.util.List;

@Data
public class Authority {
    private Long id;
    private String accessPath;
    private List<Role> roles;
}
