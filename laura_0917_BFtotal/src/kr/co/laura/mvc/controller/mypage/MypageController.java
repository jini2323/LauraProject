package kr.co.laura.mvc.controller.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.laura.mvc.dao.MemDaoInter;
import kr.co.laura.mvc.dao.MypageDaoInter;
import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.MemVO;

@Controller
public class MypageController {

	@Autowired
	private MemDaoInter memberDaointer;

	// 0902_������: �ݵ����� �߰�
	@Autowired
	private MypageDaoInter mypageinter;

	// ����κ� ȸ������ Ŭ���� ùȭ��
	@GetMapping("/mypage")
	public String getMyPage(Model m, @RequestParam(value = "email") String email, Model model, HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		model.addAttribute("vo", vo);
		return "mypage/myinfo";
	}

	// ������������ ������ Ȯ��/���� Ŭ���� ȭ��
	@GetMapping("/myDetailInfo")
	public String MyInfoDetailForm(Model m, @RequestParam(value = "email") String email, Model model,
			HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		model.addAttribute("vo", vo);
		return "mypage/MyDetailInfo";
	}

	/* �ڿ��� ���� 0811 */
	/* ȸ������ �����ϱ� */
	@GetMapping(value = "/edit")
	public String myinfoedit(Model m, String email, HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		m.addAttribute("vo", vo);
		return "mypage/infoedit";
	}

	@PostMapping(value = "/infoupdate")
	public String myinfoupdate(MemVO vo) {
		memberDaointer.myInfoEdit(vo);
		System.out.println("����� ����" + vo.getNickname());
		return "redirect:/mypage?email=" + vo.getEmail();
	}

	/* �ڿ��� ���� 0824 */
	// �������� �� ��й�ȣ Ȯ�� ��
	@GetMapping(value = "/pwdchkf")
	public String pwdChkForm(Model m, @RequestParam(value = "email") String email, HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		m.addAttribute("vo", vo);
		return "mypage/pwdchkform";
	}

	// �������� �� ��й�ȣ Ȯ���ϱ�
	@PostMapping(value = "/pwdchk")
	public String movePwdCheck(Model m, @RequestParam(value = "email") String email, MemVO vo, HttpSession session) {
		int pwd = memberDaointer.pwdChk(vo);
		/* m.addAttribute("pwd", pwd); */
		if (pwd == 1) {
			System.out.println("��й�ȣ ��ġ");
			return "redirect:/edit?email=" + vo.getEmail();
		} else {
			System.out.println("��й�ȣ ����ġ");
			return "mypage/pwderror";
		}
	}
	/* 0824 �ڿ��� ���� �� */

	/* 0825 �ڿ��� ���� */
	/* ��й�ȣ ���� �� ������Ʈ */
	@GetMapping(value = "/pwdedit")
	public String pwdEdit(Model m, String email, HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		m.addAttribute("vo", vo);
		return "mypage/EditPwd";
	}

	@PostMapping(value = "/pwdupdate")
	public String pwdUpdate(MemVO vo) {
		memberDaointer.pwdEdit(vo);
		System.out.println("����� ��й�ȣ" + vo.getPwd());
		return "redirect:/mypage?email=" + vo.getEmail();
	}

	/* 0825 �ڿ��� ���� �� */

	// 0902_������: �ݵ� ���� ����Ʈ
	@GetMapping("/funpartiList")
	public String fpList(Model m, int fmem_num) {
		List<FBoardVO> fplist = mypageinter.fplist(fmem_num);
		System.out.println("fplist" + fplist);
		m.addAttribute("fplist", fplist);
		return "mypage/myfunList";
	}

	// 0906_������: ���� ���� Ȯ�� ��
	@GetMapping("/artistDetail")
	public String artistDetailForm(Model m, @RequestParam(value = "email") String email, Model model,
			HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		model.addAttribute("vo", vo);
		return "mypage/MyArtistInfo";
	}
}
