package com.website.bukh.web;

import com.website.bukh.entity.Contact;
import com.website.bukh.service.*;
import com.website.bukh.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Date;

/**
 * Created by ken.cui on 14-2-22.
 */
@Controller
@RequestMapping(value = "/")
public class IndexController {
    @Autowired
    private CarouselPicService carouselService;
    @Autowired
    private SidePicService sidePicService;
    @Autowired
    private ItemService itemService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private DistributorService distributorService;
    @Autowired
    private ContactService contactService;

    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model) {

        model.addAttribute("carousels", carouselService.getAll());
        model.addAttribute("sidePics", sidePicService.getPicList());
        return "index";
    }

    @RequestMapping(value = "profil", method = RequestMethod.GET)
    public String profile() {

        return "profil";
    }

    @RequestMapping(value = "callesen-diesel", method = RequestMethod.GET)
    public String calesen() {

        return "callesen-diesel";
    }

    @RequestMapping(value = "distributors", method = RequestMethod.GET)
    public String distributors(Model model) {

        model.addAttribute("regions", distributorService.getAllRegions());
        return "distributors";
    }

    @RequestMapping(value = "products", method = RequestMethod.GET)
    public String product(Model model) {

        model.addAttribute("categories", categoryService.list());
        model.addAttribute("product", itemService.getOne(2L));

        return "products";
    }

    @RequestMapping(value = "contact", method = RequestMethod.GET)
    public String contact() {

        return "contact";
    }

    @RequestMapping(value = "contact/create", method = RequestMethod.POST)
    public String createContact(Contact contact, RedirectAttributes redirectAttributes) {
        contact.setStatus("0");
        contact.setCreateDate(DateUtil.convert(new Date()));
        contactService.save(contact);
        redirectAttributes.addFlashAttribute("message", "提交成功");
        return "redirect:/contact";
    }
}
