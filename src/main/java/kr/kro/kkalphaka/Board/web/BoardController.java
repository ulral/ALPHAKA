package kr.kro.kkalphaka.Board.web;

import kr.kro.kkalphaka.Board.service.BoardService;
import kr.kro.kkalphaka.Board.service.BoardVO;
import kr.kro.kkalphaka.home.web.HomeController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;
import java.util.Locale;

@Controller
@RequestMapping(value = "/board")
public class BoardController {

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

    @Inject
    private BoardService service;

    @RequestMapping(value = "/tables", method = RequestMethod.GET)
    public String tables(Locale locale, @ModelAttribute("msg") String msg, Model model) throws Exception{
        logger.info("테이블 목록 페이지로 이동합니다.");
        model.addAttribute("list",service.listAll());
        return "alphaka.board.tables";
    }

    @RequestMapping(value = "/tables/registPage", method = RequestMethod.GET)
    public String registPage(Locale locale, @ModelAttribute("msg") String msg) throws Exception{
        logger.info("테이블 페이지로 이동합니다.");
        return "alphaka.board.tables.registPage";
    }

    @RequestMapping(value="/tables/regist", method=RequestMethod.POST)
    public String regist(BoardVO vo, Model model) throws Exception{
        logger.info("테이블 페이지를 등록합니다.");
        logger.info(vo.toString());

        service.regist(vo);
        model.addAttribute("result","success");

        return "alphaka.board.tables.registSuccess";
    }
    @RequestMapping(value = "/buttons", method = RequestMethod.GET)
    public String buttons(Locale locale, Model model) {
        logger.info("Welcome home! The client locale is {}.", locale);

        return "alphaka.board.buttons";
    }

    @RequestMapping(value = "/cards", method = RequestMethod.GET)
    public String cards(Locale locale, Model model) {
        logger.info("Welcome home! The client locale is {}.", locale);

        return "alphaka.board.cards";
    }
}
