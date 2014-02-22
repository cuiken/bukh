package com.website.bukh.entity;

import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 首页轮播图片
 * Created by ken.cui on 14-2-16.
 */
@Entity
@Table(name = "tt_carousel_pic")
public class CarouselPicture extends IdEntity {

    private String dirPath;
    private Long sort;

    public String getDirPath() {
        return dirPath;
    }

    public void setDirPath(String dirPath) {
        this.dirPath = dirPath;
    }

    public Long getSort() {
        return sort;
    }

    public void setSort(Long sort) {
        this.sort = sort;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
