package kr.kro.kkalphaka.home.web;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("메인 페이지로 이동합니다.");
		
		/*
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		*/
		
		return "alphaka.dashboard";
	}
	
	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public String err404(Model model) {
		logger.info("404페이지로 이동합니다.");
		model.addAttribute("result","ALPHAKB");
		return "alphaka.404";
	}


	
	@RequestMapping(value = "/blank", method = RequestMethod.GET)
	public String blank(Model model) {
		logger.info("해당 페이지는 빈 페이지입니다.");
		
		return "alphaka.blank";
	}
	
	@RequestMapping(value = "/charts", method = RequestMethod.GET)
	public String charts(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.charts";
	}
	
	@RequestMapping(value = "/tables", method = RequestMethod.GET)
	public String tables(Locale locale, @ModelAttribute("msg") String msg) {		
		logger.info("Welcome home! The client locale is {}.", locale);
		return "alphaka.tables";
	}

	@RequestMapping(value = "/utils/animations", method = RequestMethod.GET)
	public String animations(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.utils.animations";
	}
	@RequestMapping(value = "/utils/borders", method = RequestMethod.GET)
	public String borders(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.utils.borders";
	}
	
	@RequestMapping(value = "/utils/colors", method = RequestMethod.GET)
	public String colors(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.utils.colors";
	}
	
	@RequestMapping(value = "/utils/others", method = RequestMethod.GET)
	public String others(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.utils.others";
	}
	

}
