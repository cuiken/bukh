package com.website.bukh.entity;

import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by ken.cui on 14-2-22.
 */
@Entity
@Table(name = "tt_side_pic")
public class ForSidePic extends IdEntity {

    private String name;
    private String description;
    private String dirPath;
    private String link;
    private Long sortBy;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getDirPath() {
        return dirPath;
    }

    public void setDirPath(String dirPath) {
        this.dirPath = dirPath;
    }

    @Column(name = "sort")
    public Long getSortBy() {
        return sortBy;
    }

    public void setSortBy(Long sortBy) {
        this.sortBy = sortBy;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
