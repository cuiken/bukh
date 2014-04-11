package com.website.bukh.service;

import com.website.bukh.dao.CarousePicDao;
import com.website.bukh.entity.CarouselPicture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ken.cui on 14-2-22.
 */
@Component
@Transactional
public class CarouselPicService {

    @Autowired
    private CarousePicDao carousePicDao;

    public void save(CarouselPicture entity) {
        carousePicDao.save(entity);
    }

    public List<CarouselPicture> getAll() {
        return carousePicDao.getAll();
    }

    public CarouselPicture getOne(Long id) {
        return carousePicDao.get(id);
    }

    public void delete(Long id) {
        carousePicDao.delete(id);
    }
}
