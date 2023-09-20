package kr.co.laura.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	@RequestMapping(value = "/" )
	public ModelAndView myHello() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", "<h1>안녕하세요2. 나의 첫번째 sping MVC 입니다. </h1>");
		
		mav.setViewName("test"); // ViewName을 설정
		
		
		return mav;
		
	}
	

}
