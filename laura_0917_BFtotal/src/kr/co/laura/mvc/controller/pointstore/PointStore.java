package kr.co.laura.mvc.controller.pointstore;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PointStore {
	
	@GetMapping("/pointstore")
	public String PointStorePage(){
		return "pointStore/pointStore";
	}
	
	@GetMapping("/pointstoreMain")
	public String PointStoreMainPage(){
		return "pointStore/pointStoreMain";
	}
	
}
