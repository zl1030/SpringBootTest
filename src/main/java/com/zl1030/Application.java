package com.zl1030;

import com.zl1030.aop.MessageRouter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.ExitCodeGenerator;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.core.annotation.Order;
import org.springframework.scheduling.annotation.EnableScheduling;

import javax.annotation.PreDestroy;

@SpringBootApplication
@EnableScheduling //启用定时器
@EnableConfigurationProperties //启用配置参数映射
@EnableAspectJAutoProxy
public class Application implements ExitCodeGenerator {

    private static Logger logger = LoggerFactory.getLogger(Application.class);

    public static void main(String[] args) {
        SpringApplication application = new SpringApplication(Application.class);
//        application.setBannerMode(Banner.Mode.OFF);

        ConfigurableApplicationContext context = application.run(args);

        MessageRouter gm = context.getBean(MessageRouter.class);
//        gm.router.get(1000).deCode(0, null);
    }

    @PreDestroy
    @Order(value = 2)
    public void shutdown1() {
        logger.info("ShutDown1!!!!!!!!!!!!!!!");
    }

    @PreDestroy
    @Order(value = 1)
    public void shutdown2() {
        logger.info("ShutDown2!!!!!!!!!!!!!!!");
    }

    @Override
    public int getExitCode() {

        return 0;
    }
}
