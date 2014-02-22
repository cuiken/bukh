package com.website.bukh.web;

import com.website.bukh.entity.CarouselPicture;
import com.website.bukh.service.CarouselPicService;
import com.website.bukh.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;

/**
 * Created by ken.cui on 14-2-22.
 */
@Controller
@RequestMapping(value = "/admin/carousel")
public class CarouselController {

    private static final String CAROUSEL_PIC_DIR = "carousel_pic";

    @Autowired
    private CarouselPicService carouselPicService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {

        model.addAttribute("carousels", carouselPicService.getAll());
        return "content/carouselList";
    }

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String createForm(Model model) {

        model.addAttribute("carousel", new CarouselPicture());
        model.addAttribute("action", "create");
        return "content/carouselForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(CarouselPicture entity,
                         @RequestParam MultipartFile file, RedirectAttributes redirectAttributes) throws IOException {
        if (!file.isEmpty()) {
            copyFile(file);
            entity.setDirPath(CAROUSEL_PIC_DIR + File.separator + file.getOriginalFilename());
        }
        carouselPicService.save(entity);
        redirectAttributes.addFlashAttribute("message", "新增成功");
        return "redirect:/admin/carousel";
    }

    private void copyFile(MultipartFile file) throws IOException {

        File targetDir = new File(Constants.ROOT_PATH + File.separator + CAROUSEL_PIC_DIR);
        if (!targetDir.exists()) {
            targetDir.mkdir();
        }
        File target = new File(targetDir, file.getOriginalFilename());
        file.transferTo(target);

    }

    @RequestMapping(value = "delete/{id}")
    public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        carouselPicService.delete(id);
        redirectAttributes.addFlashAttribute("message", "删除成功");
        return "redirect:/admin/carousel";
    }
}
