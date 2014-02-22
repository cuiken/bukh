package com.website.bukh.service;

import com.website.bukh.dao.SidePicDao;
import com.website.bukh.entity.ForSidePic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ken.cui on 14-2-22.
 */
@Component
@Transactional
public class SidePicService {

    @Autowired
    private SidePicDao sidePicDao;

    public List<ForSidePic> getPicList() {
        return sidePicDao.getAll();
    }

    public void saveSidePic(ForSidePic entity) {
        sidePicDao.save(entity);
    }

    public ForSidePic getOne(Long id) {
        return sidePicDao.get(id);
    }

    public void delete(Long id) {
        sidePicDao.delete(id);
    }
}
