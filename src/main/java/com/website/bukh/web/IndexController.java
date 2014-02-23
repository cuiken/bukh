package com.website.bukh.web;

import com.website.bukh.service.CarouselPicService;
import com.website.bukh.service.SidePicService;
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
    public String distributors() {

        return "distributors";
    }

    @RequestMapping(value = "products", method = RequestMethod.GET)
    public String product() {

        return "products";
    }

    @RequestMapping(value = "contact", method = RequestMethod.GET)
    public String contact() {

        return "contact";
    }
}
