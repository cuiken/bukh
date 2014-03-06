package com.website.bukh.web;

import com.website.bukh.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

        model.addAttribute("regions",distributorService.getAllRegions());
        return "distributors";
    }

    @RequestMapping(value = "products", method = RequestMethod.GET)
    public String product(Model model) {

        model.addAttribute("categories", categoryService.list());
        model.addAttribute("product",itemService.getOne(2L));

        return "products";
    }

    @RequestMapping(value = "contact", method = RequestMethod.GET)
    public String contact() {

        return "contact";
    }
}
