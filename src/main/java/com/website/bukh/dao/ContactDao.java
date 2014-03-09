package com.website.bukh.dao;

import com.website.bukh.entity.Contact;
import com.website.bukh.orm.hibernate.HibernateDao;
import org.springframework.stereotype.Component;

/**
 * Created by ken.cui on 14-3-9.
 */
@Component
public class ContactDao extends HibernateDao<Contact, Long> {
}
