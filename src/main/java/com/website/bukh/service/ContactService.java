package com.website.bukh.service;

import com.website.bukh.dao.ContactDao;
import com.website.bukh.entity.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ken.cui on 14-3-9.
 */
@Component
@Transactional
public class ContactService {

    @Autowired
    private ContactDao contactDao;

    public void save(Contact entity) {
        contactDao.save(entity);
    }

    public List<Contact> findAll() {
        return contactDao.getAll();
    }
}
