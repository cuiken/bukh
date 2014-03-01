package com.website.bukh.web;

import com.website.bukh.entity.Region;
import com.website.bukh.service.DistributorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Created by ken.cui on 14-3-1.
 */
@Controller
@RequestMapping(value = "/admin/region")
public class RegionController {

    @Autowired
    private DistributorService distributorService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {

        model.addAttribute("regions", distributorService.getAllRegions());
        return "/dist/regionList";
    }

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String createForm(Model model) {

        model.addAttribute("action", "create");
        return "/dist/regionForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(Region region, RedirectAttributes redirectAttributes) {

        distributorService.saveRegion(region);
        redirectAttributes.addFlashAttribute("message", "新增成功");
        return "redirect:/admin/region";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String updateForm(@PathVariable("id") Long id, Model model) {

        model.addAttribute("action", "update");
        model.addAttribute("region", distributorService.getOneRegion(id));
        return "/dist/regionForm";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(Region region, RedirectAttributes redirectAttributes) {
        distributorService.saveRegion(region);
        redirectAttributes.addFlashAttribute("message", "修改成功");
        return "redirect:/admin/region";
    }

    @RequestMapping(value = "delete/{id}")
    public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        distributorService.deleteRegion(id);
        redirectAttributes.addFlashAttribute("message", "删除成功");
        return "redirect:/admin/region";
    }
}
