package com.website.bukh.entity;

import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.persistence.*;

/**
 * Created by ken.cui on 14-2-22.
 */
@Entity
@Table(name = "tt_item_carousel ")
public class ItemCarousel extends IdEntity {

    private Item item;
    private String smallSizePath;
    private String largeSizePath;
    private String status;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "item_id")
    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public String getSmallSizePath() {
        return smallSizePath;
    }

    public void setSmallSizePath(String smallSizePath) {
        this.smallSizePath = smallSizePath;
    }

    public String getLargeSizePath() {
        return largeSizePath;
    }

    public void setLargeSizePath(String largeSizePath) {
        this.largeSizePath = largeSizePath;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
