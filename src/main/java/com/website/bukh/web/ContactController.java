package com.website.bukh.web;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.website.bukh.entity.Contact;
import com.website.bukh.mapper.JsonMapper;
import com.website.bukh.service.ContactService;
import com.website.bukh.util.DateUtil;
import com.website.bukh.util.HttpClientUtil;
import com.website.bukh.util.ServletUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Date;

/**
 * Created by ken.cui on 14-3-9.
 */
@Controller
public class ContactController {

    private static final String RECAPTCHA_URL = "http://www.google.com/recaptcha/api/verify";
    private static final String RECAPTCHA_PRIVATE_KEY = "6LcrmfASAAAAAKLDMytQCgIXkXnB8gSNUkFueqB7";
    @Autowired
    private ContactService contactService;

    @RequestMapping(value = "admin/contact", method = RequestMethod.GET)
    public String list(Model model) {

        model.addAttribute("contacts", contactService.findAll());
        return "content/contactList";
    }

    @RequestMapping(value = "admin/update", method = RequestMethod.GET)
    public String updateForm() {

        return null;
    }

    @RequestMapping(value = "contact/create", method = RequestMethod.POST)
    public String createContact(@RequestParam("recaptcha_challenge_field") String challengeField,
                                @RequestParam("recaptcha_response_field") String responseField,
                                HttpServletRequest request,
                                Contact contact, RedirectAttributes redirectAttributes) throws IOException {

        RecaptchaEntity recaptchaEntity = new RecaptchaEntity();
        recaptchaEntity.setPkey(RECAPTCHA_PRIVATE_KEY);
        recaptchaEntity.setChallenge(challengeField);
        recaptchaEntity.setResponse(responseField);
        recaptchaEntity.setIp(ServletUtils.findClientIPAddr(request));
        String requestJson = JsonMapper.buildNormalMapper().toJson(recaptchaEntity);

        String respStatus = HttpClientUtil.httpPost(RECAPTCHA_URL, requestJson);
        String[] status = StringUtils.split(respStatus, "\n");
        if (status[0].equals("true")) {
            contact.setStatus("0");
            contact.setCreateDate(DateUtil.convert(new Date()));
            contactService.save(contact);
            redirectAttributes.addFlashAttribute("message", "提交成功");
        } else {
            redirectAttributes.addFlashAttribute("message", status[1]);
        }
        return "redirect:/contact";
    }

    static class RecaptchaEntity {

        @JsonProperty("privatekey")
        private String pkey;
        @JsonProperty("remoteip")
        private String ip;
        @JsonProperty("challenge")
        private String challenge;
        @JsonProperty("response")
        private String response;

        public String getPkey() {
            return pkey;
        }

        public void setPkey(String pkey) {
            this.pkey = pkey;
        }

        public String getIp() {
            return ip;
        }

        public void setIp(String ip) {
            this.ip = ip;
        }

        public String getChallenge() {
            return challenge;
        }

        public void setChallenge(String challenge) {
            this.challenge = challenge;
        }

        public String getResponse() {
            return response;
        }

        public void setResponse(String response) {
            this.response = response;
        }
    }
}
