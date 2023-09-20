package kr.co.laura.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	@RequestMapping(value = "/" )
	public ModelAndView myHello() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", "<h1>�ȳ��ϼ���2. ���� ù��° sping MVC �Դϴ�. </h1>");
		
		mav.setViewName("test"); // ViewName�� ����
		
		
		return mav;
		
	}
	

}
