package com.website.bukh.web;

import com.website.bukh.entity.Country;
import com.website.bukh.orm.Page;
import com.website.bukh.orm.PropertyFilter;
import com.website.bukh.service.DistributorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by ken.cui on 14-3-1.
 */
@Controller
@RequestMapping(value = "/admin/country")
public class CountryController {
    Page<Country> page = new Page<Country>();

    @Autowired
    private DistributorService distributorService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(@RequestParam(value = "page", defaultValue = "1") int pageNumber,
                       Model model, HttpServletRequest request) {
        List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(request);

        page.setPageNo(pageNumber);
        model.addAttribute("page", distributorService.searchCountry(page, filters));
        return "dist/countryList";
    }

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String createForm(Model model) {
        model.addAttribute("country", new Country());
        model.addAttribute("regions", distributorService.getAllRegions());
        model.addAttribute("action", "create");
        return "dist/countryForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(Country country, RedirectAttributes redirectAttributes) {
        distributorService.saveCountry(country);
        redirectAttributes.addFlashAttribute("message", "新增成功");
        return "redirect:/admin/country";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String updateForm(@PathVariable("id") Long id, Model model) {

        model.addAttribute("regions", distributorService.getAllRegions());
        model.addAttribute("country", distributorService.getOneCountry(id));
        model.addAttribute("action", "update");
        return "dist/countryForm";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(Country country, RedirectAttributes redirectAttributes) {
        distributorService.saveCountry(country);
        redirectAttributes.addFlashAttribute("message", "修改成功");
        return "redirect:/admin/country";
    }

    @RequestMapping(value = "delete/{id}")
    public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        distributorService.deleteCountry(id);
        redirectAttributes.addFlashAttribute("message", "删除成功");
        return "redirect:/admin/country";
    }
}
