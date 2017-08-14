package com.zl1030.rest;

import com.zl1030.db.domain.User;
import com.zl1030.db.domain.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.atomic.AtomicLong;

/**
 * Created by Administrator on 2017/2/12 0012.
 */
@RestController
public class GreetingController {

    @Autowired
    private UserRepository userRepository;

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @RequestMapping("/abc/greeting")
    public Greeting greeting(@RequestParam(value = "name", defaultValue = "World") String name) {

        User user = new User(name, 100L);
        userRepository.save(user);
        user.setAge(20L);
        userRepository.save(user);


        return new Greeting(counter.incrementAndGet(),
                String.format(template, name));
    }
}
