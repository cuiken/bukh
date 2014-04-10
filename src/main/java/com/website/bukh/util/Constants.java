package com.website.bukh.util;

import org.apache.commons.lang3.StringUtils;

/**
 * Created by ken.cui on 14-2-22.
 */
public class Constants {

    public static final String OS_LINUX = "/opt/data/";
    public static final String OS_WINDOW = "C:\\temp";

    public static final String SIDE_PIC_DIR = "side_pic";
    public static final String CAROUSEL_PIC_DIR = "carousel_pic";


    public static String getRootPath() {
        String os = System.getProperties().getProperty("os.name");
        if (StringUtils.containsIgnoreCase(os, "window")) {
            return OS_WINDOW;
        } else {
            return OS_LINUX;
        }
    }
}
