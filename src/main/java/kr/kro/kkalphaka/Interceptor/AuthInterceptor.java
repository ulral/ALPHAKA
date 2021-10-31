package kr.kro.kkalphaka.Interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthInterceptor extends HandlerInterceptorAdapter {

    private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
    HttpSession session = request.getSession();
        if(session.getAttribute("login") == null){
            logger.info("현재 유저는 로그인하지 않았습니다.");

            response.sendRedirect("/kkalphaka/login");
            return false;
        }
        return true;
    }
}
