package com.website.bukh.web;

import com.website.bukh.entity.Category;
import com.website.bukh.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * Created by ken.cui on 14-2-20.
 */
@Controller
@RequestMapping(value = "/admin/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {

        List<Category> categoryList = categoryService.list();
        model.addAttribute("categories", categoryList);
        return "content/categoryList";
    }

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String createForm(Model model) {
        model.addAttribute("category", new Category());
        model.addAttribute("action", "create");
        return "content/categoryForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(Category category, RedirectAttributes redirectAttributes) {

        categoryService.saveCategory(category);
        redirectAttributes.addFlashAttribute("message", "新增分类[" + category.getName() + "]成功");
        return "redirect:/admin/category";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String updateForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("category", categoryService.getOne(id));
        model.addAttribute("action", "update");
        return "content/categoryForm";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(@ModelAttribute("category") Category category, RedirectAttributes redirectAttributes) {

        categoryService.saveCategory(category);
        redirectAttributes.addFlashAttribute("message", "更新分类[" + category.getName() + "]成功");
        return "redirect:/admin/category";
    }

    @RequestMapping(value = "delete/{id}")
    public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {

        categoryService.deleteCategory(id);
        redirectAttributes.addFlashAttribute("message", "删除分类成功");
        return "redirect:/admin/category";
    }

    @RequestMapping(value = "checkName")
    @ResponseBody
    public String checkName(@RequestParam("name") String name, @RequestParam("oldName") String oldName) {
        if (categoryService.isCategoryUnique(name, oldName)) {
            return "true";
        } else {
            return "false";
        }
    }

    @ModelAttribute
    public void getCategory(@RequestParam(value = "id", defaultValue = "-1") Long id, Model model) {
        if (id != -1) {
            model.addAttribute("category", categoryService.getOne(id));
        }
    }
}
