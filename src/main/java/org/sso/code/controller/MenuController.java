package org.sso.code.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.sso.code.model.Menu;
import org.sso.code.service.MenuService;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@RestController
//@RequestMapping("/api")
public class MenuController {
    @Autowired
    MenuService menuService;

    @GetMapping("/queryMenu")
    public List<Menu> getMenu(){
        System.out.println(menuService.getMenu());
        return menuService.getMenu();
    }
}
