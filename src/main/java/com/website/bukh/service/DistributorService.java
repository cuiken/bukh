package com.website.bukh.service;

import com.website.bukh.dao.CountryDao;
import com.website.bukh.dao.DistributorDao;
import com.website.bukh.dao.RegionDao;
import com.website.bukh.entity.Country;
import com.website.bukh.entity.Distributors;
import com.website.bukh.entity.Region;
import com.website.bukh.orm.Page;
import com.website.bukh.orm.PropertyFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ken.cui on 14-3-1.
 */
@Component
@Transactional
public class DistributorService {

    @Autowired
    private RegionDao regionDao;
    @Autowired
    private CountryDao countryDao;
    @Autowired
    private DistributorDao distributorDao;

    public List<Region> getAllRegions() {
        return regionDao.getAll();
    }

    public void saveRegion(Region entity) {
        regionDao.save(entity);
    }

    public void deleteRegion(Long id) {
        regionDao.delete(id);
    }

    public Region getOneRegion(Long id) {
        return regionDao.get(id);
    }

    public void saveCountry(Country entity) {
        countryDao.save(entity);
    }

    public void deleteCountry(Long id) {
        countryDao.delete(id);
    }

    public Country getOneCountry(Long id) {
        return countryDao.get(id);
    }

    public List<Country> getAllCountries() {
        return countryDao.getAll();
    }

    public void saveDist(Distributors entity) {
        distributorDao.save(entity);
    }

    public Distributors getOneDist(Long id) {
        return distributorDao.get(id);
    }

    public void deleteDist(Long id) {
        distributorDao.delete(id);
    }

    public List<Distributors> getAllDists() {
        return distributorDao.getAll();
    }

    public Page<Country> searchCountry(final Page<Country> page, final List<PropertyFilter> filters) {
        return countryDao.findPage(page, filters);
    }

    public List<Country> getCountryByRegion(Long regionId) {
        return countryDao.findBy("region.id", regionId);
    }
}
