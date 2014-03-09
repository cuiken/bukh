package com.website.bukh.web;

import com.website.bukh.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by ken.cui on 14-3-9.
 */
@Controller
@RequestMapping("/admin/contact")
public class ContactController {

    @Autowired
    private ContactService contactService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {

        model.addAttribute("contacts", contactService.findAll());
        return "content/contactList";
    }

    @RequestMapping(value = "update", method = RequestMethod.GET)
    public String updateForm() {

        return null;
    }

}
