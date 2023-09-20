package kr.co.laura.mvc.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.laura.mvc.dao.MemDaoInter;
import kr.co.laura.mvc.vo.MemVO;

@Controller
public class LoginCheckController {

	@Autowired
	private MemDaoInter lauraMemDaoInter;

	@RequestMapping("/loginForm")
	public String loginForm() {
		return "member/loginForm";
	}

	@PostMapping("/loginProcess") // 아이피를 받기 위해서 HttpServletRequest를 인자로 받는다
	public ModelAndView loginfProcess(HttpSession session, HttpServletRequest request, MemVO vo,
			@RequestHeader("User-Agent") String userAgent) {// 인자 순서때문에 오류남
		// 인자순서랑 advice의 순서랑 같아야한다?

		ModelAndView mav = new ModelAndView("redirect:/main");
		// 파라미터 넘어오는지 테스트 먼저
		System.out.println("email:" + vo.getEmail());
		System.out.println("pwd:" + vo.getPwd());

		MemVO dto = lauraMemDaoInter.loginCheck(vo);

		if (dto == null) { // 인증실패
			System.out.println("오류 이동 페이지 작동");
			mav.setViewName("error/paramException");
			mav.addObject("emsg", "아우라계정 혹은 비밀번호가 일치하지 않습니다. 입력한 내용을 다시 확인해 주세요.");
		} else { // 인증성공
			session.setAttribute("sessionName", dto.getName());
			session.setAttribute("sessionID", dto.getEmail());
			session.setAttribute("sessionPwd", dto.getPwd()); // 08-26 이성근 추가
			session.setAttribute("sessionNO", dto.getNum());
			session.setAttribute("sessionNNAME", dto.getNickname());
			session.setAttribute("ssesionArtist", dto.getArstatus());
			// 성근이 Test
			session.setAttribute("sessionMem", dto);
			System.out.println(session.getAttribute("ssesionArtist"));
			System.out.println("로그인 실행! 및 세션 저장 => Proceeding Call");

		}

		return mav;
	}

	@GetMapping("/logout")
	public ModelAndView loginfoutProcess(HttpSession session) {// 리팩토링

		ModelAndView mav = new ModelAndView();
		session.removeAttribute("sessionName");
		session.removeAttribute("sessionID");
		mav.setViewName("redirect:/main");
		System.out.println("로그아웃 실행! 및 세션삭제=> Proceeding Call");

		return mav;

	}

	// 아이디&비번 찾기!
	@GetMapping("/findIDPWD")
	public String find_id() {
		return "member/find_idpwd";
	}

}
