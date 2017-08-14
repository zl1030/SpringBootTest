package com.zl1030.endpoint;

import org.springframework.boot.actuate.endpoint.Endpoint;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/2/12 0012.
 */
@Component
public class MyEndPoint2 implements Endpoint {
    public MyEndPoint2() {
    }

    public String getId() {
        return "my2";
    }

    public boolean isEnabled() {
        return true;
    }

    public boolean isSensitive() {
        return false;
    }

    public Object invoke() {

        return "MyEndPoint2 Called";
    }
}
