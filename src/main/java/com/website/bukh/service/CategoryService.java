package com.website.bukh.service;

import com.website.bukh.dao.CategoryDao;
import com.website.bukh.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ken.cui on 14-2-20.
 */
@Component
@Transactional
public class CategoryService {

    @Autowired
    private CategoryDao categoryDao;

    public void saveCategory(Category entity) {
        categoryDao.save(entity);
    }

    public void deleteCategory(Long id) {
        categoryDao.delete(id);
    }

    public List<Category> list() {
        return categoryDao.getAll();
    }

    public Category getOne(Long id) {
        return categoryDao.get(id);
    }

    public Category findCategoryByName(String name) {
        return categoryDao.findUniqueBy("name", name);
    }
}
