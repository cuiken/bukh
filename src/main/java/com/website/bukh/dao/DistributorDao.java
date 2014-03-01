package com.website.bukh.dao;

import com.website.bukh.entity.Distributors;
import com.website.bukh.orm.hibernate.HibernateDao;
import org.springframework.stereotype.Component;

/**
 * Created by ken.cui on 14-3-1.
 */
@Component
public class DistributorDao extends HibernateDao<Distributors, Long> {
}
