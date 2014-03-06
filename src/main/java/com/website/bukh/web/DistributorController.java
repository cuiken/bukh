package com.website.bukh.web;

import com.website.bukh.entity.Distributors;
import com.website.bukh.service.DistributorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Created by ken.cui on 14-3-1.
 */
@Controller
@RequestMapping(value = "/admin/distributor")
public class DistributorController {

    @Autowired
    private DistributorService distributorService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model,@RequestParam(value = "regionId",defaultValue = "1")Long regionId) {
        model.addAttribute("region",distributorService.getAllRegions());
//        model.addAttribute("countries",)
//        model.addAttribute("dists", distributorService.getAllDists());
        return "dist/distributorList";
    }

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String createForm(Model model) {
        model.addAttribute("action", "create");
        return "dist/distributorForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(Distributors distributors, RedirectAttributes redirectAttributes) {
        distributorService.saveDist(distributors);
        redirectAttributes.addFlashAttribute("message", "新增成功");
        return "redirect:/admin/distributor";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String updateForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("dist", distributorService.getOneDist(id));
        model.addAttribute("action", "update");
        return "dist/distributorForm";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(Distributors distributors, RedirectAttributes redirectAttributes) {
        distributorService.saveDist(distributors);
        redirectAttributes.addFlashAttribute("message", "修改成功");
        return "redirect:/admin/distributor";
    }

    @RequestMapping(value = "delete/{id}")
    public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        distributorService.deleteDist(id);
        redirectAttributes.addFlashAttribute("message", "删除成功");
        return "redirect:/admin/distributor";
    }
}
