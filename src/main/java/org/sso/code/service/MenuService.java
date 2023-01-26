package org.sso.code.service;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.sso.code.mapper.MenuMapper;
import org.sso.code.model.Menu;

import java.util.ArrayList;
import java.util.List;

@Service
public class MenuService {
    @Autowired
    MenuMapper menuMapper;
    public List<Menu> getMenu() {
        ArrayList<Menu> menus = new ArrayList<>();
        for (Menu menu : menuMapper.getMenu()) {
            menus.add(menu);
        }
        System.out.println("================menus=================");
        System.out.println(menus);
        return menus;
    }
}
