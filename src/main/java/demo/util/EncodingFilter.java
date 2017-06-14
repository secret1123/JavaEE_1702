package demo.util;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by AnLu on
 * 2017/6/14 14:08.
 * JavaEE_1702
 */
@WebFilter(urlPatterns = "/*")
public class EncodingFilter implements Filter{
    private static final String ENCODING = "UTF-8";
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        request.setCharacterEncoding(ENCODING);
        response.setCharacterEncoding(ENCODING);
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
