package com.website.bukh.dao;

import com.website.bukh.entity.Category;
import com.website.bukh.orm.hibernate.HibernateDao;
import org.springframework.stereotype.Component;

/**
 * Created by ken.cui on 14-2-20.
 */
@Component
public class CategoryDao extends HibernateDao<Category,Long> {
}
