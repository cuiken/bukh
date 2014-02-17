package com.website.bukh.dao;

import com.website.bukh.entity.User;
import com.website.bukh.orm.hibernate.HibernateDao;
import org.springframework.stereotype.Component;

/**
 * Created by ken.cui on 14-2-16.
 */
@Component
public class UserDao extends HibernateDao<User,Long>{
}
