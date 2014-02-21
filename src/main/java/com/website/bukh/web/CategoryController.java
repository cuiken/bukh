package com.website.bukh.web;

import com.website.bukh.entity.Category;
import com.website.bukh.service.CategoryServie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by ken.cui on 14-2-20.
 */
@Controller
@RequestMapping(value = "/content/category")
public class CategoryController {

    @Autowired
    private CategoryServie categoryServie;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {

        List<Category> categoryList = categoryServie.list();
        model.addAttribute("categories", categoryList);
        return "content/categoryList";
    }
}
