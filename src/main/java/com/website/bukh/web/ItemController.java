package com.website.bukh.web;

import com.website.bukh.entity.Item;
import com.website.bukh.service.CategoryService;
import com.website.bukh.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Created by ken.cui on 14-2-22.
 */
@Controller
@RequestMapping(value = "/admin/item")
public class ItemController {
    @Autowired
    private ItemService itemService;
    @Autowired
    private CategoryService categoryService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("items", itemService.getAll());

        return "/content/itemList";
    }

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String createForm(Model model) {
        model.addAttribute("action", "create");
        model.addAttribute("item", new Item());
        model.addAttribute("categories", categoryService.list());
        return "content/itemForm";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String updateForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("action", "update");
        model.addAttribute("item", itemService.getOne(id));
        model.addAttribute("categories", categoryService.list());
        return "content/itemForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(Item item, @RequestParam MultipartFile[] files, RedirectAttributes redirectAttributes) {


        itemService.save(item);
        redirectAttributes.addFlashAttribute("message", "新增成功");
        return "redirect:/admin/item";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(Item item, @RequestParam MultipartFile[] files, RedirectAttributes redirectAttributes) {

        itemService.save(item);
        redirectAttributes.addFlashAttribute("message", "修改成功");
        return "redirect:/admin/item";
    }

    @RequestMapping(value = "delete/{id}")
    public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        itemService.delete(id);
        redirectAttributes.addFlashAttribute("message", "删除成功");
        return "redirect:/admin/item";
    }
}
