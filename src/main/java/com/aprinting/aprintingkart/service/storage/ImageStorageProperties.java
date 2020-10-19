package com.aprinting.aprintingkart.service.storage;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties("storage")
public class ImageStorageProperties {

    /**
     * Folder location for storing files
     */
    private String location = "C:/dev/projects/Aprinting/aprintingkart/src/main/resources/image";

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

}