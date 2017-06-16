package demo.util;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Created by AnLu on
 * 2017/6/15 08:37.
 * JavaEE_1702
 */
@WebListener
public class TestListener implements ServletRequestListener,ServletRequestAttributeListener {
    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
//        System.out.println("requestDestroyed");
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
//        System.out.println("requestInitialized");
    }

    @Override
    public void attributeAdded(ServletRequestAttributeEvent srae) {

    }

    @Override
    public void attributeRemoved(ServletRequestAttributeEvent srae) {

    }

    @Override
    public void attributeReplaced(ServletRequestAttributeEvent srae) {

    }
}
