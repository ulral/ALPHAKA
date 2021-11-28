package kr.kro.kkalphaka.board.web;

import kr.kro.kkalphaka.board.service.BoardService;
import kr.kro.kkalphaka.board.service.BoardVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import java.util.Locale;

@Controller
@RequestMapping(value = "/board")
public class BoardController {

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

    @Inject
    private BoardService service;

    @RequestMapping(value = "/tables", method = RequestMethod.GET)
    public String tables(@ModelAttribute("msg") String msg, Model model) throws Exception{
        logger.info("테이블 목록 페이지로 이동합니다.");
        model.addAttribute("list",service.listAll());
        return "alphaka.board.tables";
    }

    @RequestMapping(value = "/tables/viewPages", method = RequestMethod.GET)
    public String viewPage(@RequestParam("boardId") String boardId, @ModelAttribute("msg") String msg, Model model) throws Exception{
        logger.info("상세 페이지로 이동합니다.");
        model.addAttribute(service.read(boardId));
        return "alphaka.board.tables.views";
    }


    @RequestMapping(value = "/tables/registPages", method = RequestMethod.GET)
    public String registPage(@ModelAttribute("msg") String msg) throws Exception{
        logger.info("테이블 페이지로 이동합니다.");
        return "alphaka.board.tables.registPages";
    }

    @RequestMapping(value="/tables/regist", method=RequestMethod.POST)
    public String regist(BoardVO vo, Model model) throws Exception{
        logger.info("테이블 페이지를 등록합니다.");
        service.regist(vo);
        model.addAttribute("result","success");

        return "redirect:/board/tables";
    }

    @RequestMapping(value="/tables/modifyPage", method=RequestMethod.POST)
    public String modifyPage(BoardVO vo, Model model) throws Exception{
        logger.info("수정 페이지로 이동합니다.");
        model.addAttribute("result", service.read(vo.getBoardId()));

        return "alphaka.board.tables.registPages";
    }

    @RequestMapping(value="/tables/modify", method=RequestMethod.POST)
    public String modify(BoardVO vo, Model model) throws Exception{
        logger.info("페이지를 수정합니다.");
        service.modify(vo);
        model.addAttribute("result","success");
        return "redirect:/board/tables/viewPages?boardId="+vo.getBoardId();
    }

    @RequestMapping(value = "/tables/deletePages", method = RequestMethod.POST)
    public String remove(BoardVO vo, @ModelAttribute("msg") String msg, RedirectAttributes rttr) throws Exception{
        logger.info("페이지를 삭제합니다.");
        service.remove(vo.getBoardId());
        rttr.addFlashAttribute("msg", "SUCCESS");

        return "redirect:/board/tables";
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
