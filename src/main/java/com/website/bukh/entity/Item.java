package com.website.bukh.entity;

import com.google.common.collect.Lists;
import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.persistence.*;
import java.util.List;

/**
 * Created by ken.cui on 14-2-16.
 */
@Entity
@Table(name = "tt_item")
public class Item extends IdEntity {

    private String name;
    private String title;
    private String shortTitle;
    private String content;
    private String productBrochure; //产品手册pdf
    private String technialDrawing; //技术图纸pdf
    private String torqueCurves;    //扭矩曲线pdf
    private List<ItemCarousel> carousels = Lists.newArrayList();

    private Category category;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getShortTitle() {
        return shortTitle;
    }

    public void setShortTitle(String shortTitle) {
        this.shortTitle = shortTitle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getProductBrochure() {
        return productBrochure;
    }

    public void setProductBrochure(String productBrochure) {
        this.productBrochure = productBrochure;
    }

    public String getTechnialDrawing() {
        return technialDrawing;
    }

    public void setTechnialDrawing(String technialDrawing) {
        this.technialDrawing = technialDrawing;
    }

    public String getTorqueCurves() {
        return torqueCurves;
    }

    public void setTorqueCurves(String torqueCurves) {
        this.torqueCurves = torqueCurves;
    }

    @OneToMany(mappedBy = "item", fetch = FetchType.LAZY, cascade = {CascadeType.REMOVE}, orphanRemoval = true)
    public List<ItemCarousel> getCarousels() {
        return carousels;
    }

    public void setCarousels(List<ItemCarousel> carousels) {
        this.carousels = carousels;
    }

    @ManyToOne
    @JoinColumn(name = "category_id")
    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
