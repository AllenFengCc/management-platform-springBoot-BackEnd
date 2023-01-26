package org.sso.code.model;

import lombok.Data;

import java.util.List;

@Data
public class Menu {
    private Long id;
    private Long parentId;
    private String icon;
    private String name;
    private String path;
    private List<Menu> children;
    private List<Role> roles;
}
