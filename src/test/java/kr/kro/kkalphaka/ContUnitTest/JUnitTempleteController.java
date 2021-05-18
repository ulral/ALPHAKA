package kr.kro.kkalphaka.ContUnitTest;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;


@ExtendWith(SpringExtension.class)
@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
class JUnitTempleteController {

	private static final Logger logger = LoggerFactory.getLogger(JUnitTempleteController.class);
	
	@Inject
	private WebApplicationContext wac;

	private MockMvc mockMvc;

	/** 
	 * JUnit에서 테스트를 위해 브라우저의 요청과 응답을 대신해주는 객체를 생성함.
	 * @author DINO1869
	 * @since v1.0
	 */
	@BeforeEach
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
		logger.info("Setup JUnit Servlet Object");
	}
	
	/** 
	 * JUnit 테스트로 /table를 호출함.
	 * @author DINO1869
	 * @since v1.0
	 */
	@Test
	public void views() throws Exception{		
		mockMvc.perform(MockMvcRequestBuilders.get("/tables"));
		logger.info("tables로 이동!!");
	}

	/** 
	 * JUnit 테스트로 /json을 호출함.
	 * @author DINO1869
	 * @since v1.0
	 */
	@Test
	public void json() throws Exception{		
		mockMvc.perform(MockMvcRequestBuilders.get("/json"));
		logger.info("json {}!!",mockMvc);
	}
}