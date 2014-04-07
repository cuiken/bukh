package com.website.bukh.web;

import com.google.common.collect.Maps;
import com.website.bukh.entity.Country;
import com.website.bukh.mapper.JsonMapper;
import com.website.bukh.orm.Page;
import com.website.bukh.orm.PageRequest;
import com.website.bukh.orm.PropertyFilter;
import com.website.bukh.service.DistributorService;
import com.website.bukh.util.Servlets;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created by ken.cui on 14-3-1.
 */
@Controller
@RequestMapping(value = "/admin/country")
public class CountryController {

    Page<Country> page = new Page<Country>();

    private static Map<String, String> sortTypes = Maps.newLinkedHashMap();

    static {
        sortTypes.put("auto", "自动");
        sortTypes.put("title", "E标题");
        sortTypes.put("region", "区域");
    }

    @Autowired
    private DistributorService distributorService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(@RequestParam(value = "page", defaultValue = "1") int pageNumber,
                       @RequestParam(value = "sortType", defaultValue = "auto") String sortType,
                       Model model, HttpServletRequest request) {
        List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(request);
        Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "filter_");
        page.setPageNo(pageNumber);

        if ("auto".equals(sortType)) {
            page.setOrderBy("id");
            page.setOrderDir(PageRequest.Sort.DESC);
        } else if ("title".equals(sortType)) {
            page.setOrderBy("name");
            page.setOrderDir(PageRequest.Sort.ASC);
        } else {
            page.setOrderBy("region");
            page.setOrderDir(PageRequest.Sort.ASC);
        }

        model.addAttribute("sortType", sortType);
        model.addAttribute("sortTypes", sortTypes);
        model.addAttribute("page", distributorService.searchCountry(page, filters));
        model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "filter_"));
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

    @RequestMapping(value = "json")
    @ResponseBody
    public String getJson(@RequestParam("pid") Long id) {
        List<Country> countries = distributorService.getCountryByRegion(id);
        JsonMapper mapper = JsonMapper.buildNormalMapper();
        return mapper.toJson(countries);
    }
}
