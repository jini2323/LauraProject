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

	@PostMapping("/loginProcess") // �����Ǹ� �ޱ� ���ؼ� HttpServletRequest�� ���ڷ� �޴´�
	public ModelAndView loginfProcess(HttpSession session, HttpServletRequest request, MemVO vo,
			@RequestHeader("User-Agent") String userAgent) {// ���� ���������� ������
		// ���ڼ����� advice�� ������ ���ƾ��Ѵ�?

		ModelAndView mav = new ModelAndView("redirect:/main");
		// �Ķ���� �Ѿ������ �׽�Ʈ ����
		System.out.println("email:" + vo.getEmail());
		System.out.println("pwd:" + vo.getPwd());

		MemVO dto = lauraMemDaoInter.loginCheck(vo);

		if (dto == null) { // ��������
			System.out.println("���� �̵� ������ �۵�");
			mav.setViewName("error/paramException");
			mav.addObject("emsg", "�ƿ����� Ȥ�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�. �Է��� ������ �ٽ� Ȯ���� �ּ���.");
		} else { // ��������
			session.setAttribute("sessionName", dto.getName());
			session.setAttribute("sessionID", dto.getEmail());
			session.setAttribute("sessionPwd", dto.getPwd()); // 08-26 �̼��� �߰�
			session.setAttribute("sessionNO", dto.getNum());
			session.setAttribute("sessionNNAME", dto.getNickname());
			session.setAttribute("ssesionArtist", dto.getArstatus());
			// ������ Test
			session.setAttribute("sessionMem", dto);
			System.out.println(session.getAttribute("ssesionArtist"));
			System.out.println("�α��� ����! �� ���� ���� => Proceeding Call");

		}

		return mav;
	}

	@GetMapping("/logout")
	public ModelAndView loginfoutProcess(HttpSession session) {// �����丵

		ModelAndView mav = new ModelAndView();
		session.removeAttribute("sessionName");
		session.removeAttribute("sessionID");
		mav.setViewName("redirect:/main");
		System.out.println("�α׾ƿ� ����! �� ���ǻ���=> Proceeding Call");

		return mav;

	}

	// ���̵�&��� ã��!
	@GetMapping("/findIDPWD")
	public String find_id() {
		return "member/find_idpwd";
	}

}
