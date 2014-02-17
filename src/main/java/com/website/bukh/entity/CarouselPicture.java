package com.website.bukh.entity;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * 商品详细页轮播图片
 * Created by ken.cui on 14-2-16.
 */
public class CarouselPicture extends IdEntity {

    private String smallSize;
    private String largeSize;
    private String relativePath;

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

    public String getRelativePath() {
        return relativePath;
    }

    public void setRelativePath(String relativePath) {
        this.relativePath = relativePath;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
