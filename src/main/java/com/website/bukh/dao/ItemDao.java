package com.website.bukh.dao;

import com.website.bukh.entity.Item;
import com.website.bukh.orm.hibernate.HibernateDao;
import org.springframework.stereotype.Component;

/**
 * Created by ken.cui on 14-2-22.
 */
@Component
public class ItemDao extends HibernateDao<Item ,Long> {
}
