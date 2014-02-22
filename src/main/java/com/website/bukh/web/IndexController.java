package com.website.bukh.web;

import com.website.bukh.service.CarouselPicService;
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

    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model) {

        model.addAttribute("carousels", carouselService.getAll());
        return "index";
    }
}
