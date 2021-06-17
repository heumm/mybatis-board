package com.seed.study;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
/**
 * ====================[type]====================
 * @파일명:HomeController.java
 * @작성일자:2021. 3. 16.
 * @작성자:이대윤
 * @프로젝트이름:edu
 * @프로그램설명:home
 * @변경이력:
 * ====================[type]====================
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("Welcome home! The client locale is {}.");
		mv.setViewName("home");
		return mv;
	}

}
