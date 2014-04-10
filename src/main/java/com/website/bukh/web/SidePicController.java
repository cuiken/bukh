package com.website.bukh.web;

import com.website.bukh.entity.ForSidePic;
import com.website.bukh.service.SidePicService;
import com.website.bukh.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by ken.cui on 14-2-22.
 */
@Controller
@RequestMapping(value = "/admin/side_pic")
public class SidePicController {

    @Autowired
    private SidePicService sidePicService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {

        List<ForSidePic> pics = sidePicService.getPicList();
        model.addAttribute("sidePics", pics);
        return "content/sidePicList";
    }

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String createForm(Model model) {
        model.addAttribute("sidePic", new ForSidePic());
        model.addAttribute("action", "create");
        return "content/sidePicForm";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String updateForm(@PathVariable("id") Long id, Model model) {

        model.addAttribute("sidePic", sidePicService.getOne(id));
        model.addAttribute("action", "update");
        return "content/sidePicForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(ForSidePic sidePic, @RequestParam MultipartFile file, RedirectAttributes redirectAttributes) throws Exception {

        if (!file.isEmpty()) {
            copyFile(file);
            sidePic.setDirPath(Constants.SIDE_PIC_DIR + File.separator + file.getOriginalFilename());
        }
        sidePicService.saveSidePic(sidePic);
        redirectAttributes.addFlashAttribute("message", "新增成功");
        return "redirect:/admin/side_pic";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(@ModelAttribute("sidePic") ForSidePic sidePic,
                         @RequestParam MultipartFile file, RedirectAttributes redirectAttributes) throws Exception {
        if (!file.isEmpty()) {
            copyFile(file);
            sidePic.setDirPath(Constants.SIDE_PIC_DIR + File.separator + file.getOriginalFilename());
        }

        sidePicService.saveSidePic(sidePic);
        redirectAttributes.addFlashAttribute("message", "更新成功");
        return "redirect:/admin/side_pic";
    }

    private void copyFile(MultipartFile file) throws IOException {

        File targetDir = new File(Constants.getRootPath() + File.separator + Constants.SIDE_PIC_DIR);
        if (!targetDir.exists()) {
            targetDir.mkdir();
        }
        File target = new File(targetDir, file.getOriginalFilename());
        file.transferTo(target);

    }

    @RequestMapping(value = "delete/{id}")
    public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {

        sidePicService.delete(id);
        redirectAttributes.addFlashAttribute("message", "删除成功");
        return "redirect:/admin/side_pic";
    }

    @ModelAttribute
    public void getSidePic(@RequestParam(value = "id", defaultValue = "-1") Long id, Model model) {
        if (id != -1) {
            model.addAttribute("sidePic", sidePicService.getOne(id));
        }
    }
}
