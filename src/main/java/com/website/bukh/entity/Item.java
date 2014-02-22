package com.website.bukh.entity;

import com.google.common.collect.Lists;

import java.util.List;

/**
 * Created by ken.cui on 14-2-16.
 */
public class Item extends IdEntity {

    private String name;
    private String title;
    private String shortTitle;
    private String content;
    private String productBrochure; //产品手册pdf
    private String technialDrawing; //技术图纸pdf
    private String torqueCurves;    //扭矩曲线pdf
    private List<CarouselPicture> pictureList = Lists.newArrayList();


}
