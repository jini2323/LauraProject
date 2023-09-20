package kr.co.laura.mvc.controller.funding;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class FundingMain {
	@GetMapping("/fmain_fin")
	public String mfund() {
		return "funding/fmain_fin";
	}
	
	@GetMapping("/fdetail_ing")
	public String dfunding() {
		return "funding/fdetail_ing";
	}
	
	@GetMapping("/fdetail_fin")
	public String dfunding5() {
		return "funding/fdetail_fin";
	}
	
	@GetMapping("/fmain_ing")
	public String mfund2() {
		return "funding/fmain_ing";
	}
	
	@GetMapping("/fmain_soon")
	public String mfund3() {
		return "funding/fmain_soon";
	}
	
	@GetMapping("/vote")
	public String vote() {
		return "A101/vote";
	}
}
