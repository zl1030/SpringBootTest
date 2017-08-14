package com.zl1030.aop;

import com.zl1030.message.Message;
import com.zl1030.message.CuMessage;
import com.google.common.collect.Maps;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Map;

/**
 * Created by Administrator on 2017/2/12 0012.
 */
@Component
public class MessageRouter {

    Logger logger = LoggerFactory.getLogger(MessageRouter.class);

    @Autowired
    ConfigurableApplicationContext context;

    public static Map<Integer, CuMessage> router;

    @PostConstruct
    public void init() {
        router = Maps.newConcurrentMap();

        Map<String, Object> so = context.getBeansWithAnnotation(Message.class);
        for (Object o : so.values()) {
            if (o instanceof CuMessage) {
                Message m = o.getClass().getAnnotation(Message.class);
                router.put(m.id(), (CuMessage) o);
            }
        }
    }
}
