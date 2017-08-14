package com.zl1030.boot;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/2/12 0012.
 */
@Component
@Order(value = 1)
public class BootRunner implements CommandLineRunner {

    Logger logger = LoggerFactory.getLogger(BootRunner.class);

    @Override
    public void run(String... strings) throws Exception {
        logger.info("Ha Ha Ha 1111");
    }
}
