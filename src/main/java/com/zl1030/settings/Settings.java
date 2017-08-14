package com.zl1030.settings;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/2/12 0012.
 */
@ConfigurationProperties(prefix = "game")//初始化以application.properties中以game开头的参数
@Component
public class Settings {

    public void setId(int id) {
        this.id = id;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public int getId() {
        return id;
    }

    public String getServiceName() {
        return serviceName;
    }

    private int id = -1;
    private String serviceName = "default";

}
