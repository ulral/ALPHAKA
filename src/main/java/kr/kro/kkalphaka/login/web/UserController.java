package kr.kro.kkalphaka.login.web;

import kr.kro.kkalphaka.login.service.LoginDTO;
import kr.kro.kkalphaka.interceptor.LoginInterceptor;
import kr.kro.kkalphaka.login.service.UserService;
import kr.kro.kkalphaka.login.service.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

    @Inject
    private UserService service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginGET(@ModelAttribute("dto") LoginDTO dto){
        logger.info("로그인 페이지 입니다.");
        return "alphaka.login";
    }

    @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
    public String loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception{
        logger.info("로그인을 시도합니다.");
        UserVO vo = service.login(dto);

        if (vo == null) {
            return "alphaka.login";
        }

        model.addAttribute("userVO",vo);
        return "alphaka.loginPost";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(LoginDTO dto, HttpSession session, Model model) throws Exception{
        logger.info("로그아웃을 시도합니다.");
        session.removeAttribute("login");
        model.addAttribute("msg","LOGOUT");

        return "alphaka.dashboard";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Model model, HttpSession session) {
        logger.info("회원가입 페이지로 이동합니다.");

        return "alphaka.register";
    }

    @RequestMapping(value = "/registerPost", method = RequestMethod.POST)
    public String register(UserVO user, HttpSession session, Model model) throws Exception{
        logger.info("회원가입을 시도합니다.");
            //session.getAttribute("Login");
            service.register(user);
        return "alphaka.loginPost";
    }

    @RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
    public String forgotPassword(Model model) {
        logger.info("비밀번호 찾기 페이지로 이동합니다.");

        return "alphaka.forgotpassword";
    }

}
