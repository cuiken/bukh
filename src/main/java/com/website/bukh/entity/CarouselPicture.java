package com.website.bukh.entity;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * 轮播图片
 * Created by ken.cui on 14-2-16.
 */
public class CarouselPicture extends IdEntity {


    private String smallSize;
    private String largeSize;
    private Long sort;
    private Long position;

    public Long getPosition() {
        return position;
    }

    public void setPosition(Long position) {
        this.position = position;
    }

    public String getSmallSize() {
        return smallSize;
    }

    public void setSmallSize(String smallSize) {
        this.smallSize = smallSize;
    }

    public String getLargeSize() {
        return largeSize;
    }

    public void setLargeSize(String largeSize) {
        this.largeSize = largeSize;
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
