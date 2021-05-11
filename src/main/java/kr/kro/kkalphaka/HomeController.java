package kr.kro.kkalphaka;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		return "alphaka.dashboard";
	}
	
	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public String err404(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
				
		return "alphaka.404";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.login";
	}
	
	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
	public String forgotPassword(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.forgotpassword";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.register";
	}
	
	@RequestMapping(value = "/blank", method = RequestMethod.GET)
	public String blank(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.blank";
	}
	
	@RequestMapping(value = "/charts", method = RequestMethod.GET)
	public String charts(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.charts";
	}
	
	@RequestMapping(value = "/tables", method = RequestMethod.GET)
	public String tables(Locale locale, Model model) {
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
	
	@RequestMapping(value = "/components/buttons", method = RequestMethod.GET)
	public String buttons(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.components.buttons";
	}
	
	@RequestMapping(value = "/components/cards", method = RequestMethod.GET)
	public String cards(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "alphaka.components.cards";
	}
}
