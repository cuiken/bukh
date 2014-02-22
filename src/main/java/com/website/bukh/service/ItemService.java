package com.website.bukh.service;

import com.website.bukh.dao.ItemDao;
import com.website.bukh.entity.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ken.cui on 14-2-22.
 */
@Component
@Transactional
public class ItemService {

    @Autowired
    private ItemDao itemDao;

    public List<Item> getAll() {

        return itemDao.getAll();
    }

    public Item getOne(Long id) {
        return itemDao.get(id);
    }

    public void save(Item entity) {
        itemDao.save(entity);
    }

    public void delete(Long id) {
        itemDao.delete(id);
    }
}
