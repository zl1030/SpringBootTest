package com.zl1030.task;

import com.zl1030.settings.Settings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;

@Component
public class ScheduledTasks {

    @Autowired
    private Settings settings;

    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");

    @Scheduled(fixedRate = 1000)
    public void reportCurrentTime() {
//        System.out.println(settings.getId() + " " + settings.getServiceName() + " 当前时间：" + dateFormat.format(new Date()));

    }

}
