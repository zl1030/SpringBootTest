package com.zl1030.endpoint;

import org.springframework.boot.actuate.endpoint.Endpoint;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/2/12 0012.
 */
@Component
public class MyEndPoint1 implements Endpoint {
    public MyEndPoint1() {
    }

    public String getId() {
        return "my1";
    }

    public boolean isEnabled() {
        return true;
    }

    public boolean isSensitive() {
        return false;
    }

    public Object invoke() {

        return "MyEndPoint1 Called";
    }
}
