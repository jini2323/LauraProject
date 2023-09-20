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

	// 0902_박형지: 펀딩참여 추가
	@Autowired
	private MypageDaoInter mypageinter;

	// 헤더부분 회원정보 클릭시 첫화면
	@GetMapping("/mypage")
	public String getMyPage(Model m, @RequestParam(value = "email") String email, Model model, HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		model.addAttribute("vo", vo);
		return "mypage/myinfo";
	}

	// 마이페이지의 내정보 확인/수정 클릭시 화면
	@GetMapping("/myDetailInfo")
	public String MyInfoDetailForm(Model m, @RequestParam(value = "email") String email, Model model,
			HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		model.addAttribute("vo", vo);
		return "mypage/MyDetailInfo";
	}

	/* 박원빈 수정 0811 */
	/* 회원정보 수정하기 */
	@GetMapping(value = "/edit")
	public String myinfoedit(Model m, String email, HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		m.addAttribute("vo", vo);
		return "mypage/infoedit";
	}

	@PostMapping(value = "/infoupdate")
	public String myinfoupdate(MemVO vo) {
		memberDaointer.myInfoEdit(vo);
		System.out.println("변경된 정보" + vo.getNickname());
		return "redirect:/mypage?email=" + vo.getEmail();
	}

	/* 박원빈 수정 0824 */
	// 정보수정 전 비밀번호 확인 폼
	@GetMapping(value = "/pwdchkf")
	public String pwdChkForm(Model m, @RequestParam(value = "email") String email, HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		m.addAttribute("vo", vo);
		return "mypage/pwdchkform";
	}

	// 정보수정 전 비밀번호 확인하기
	@PostMapping(value = "/pwdchk")
	public String movePwdCheck(Model m, @RequestParam(value = "email") String email, MemVO vo, HttpSession session) {
		int pwd = memberDaointer.pwdChk(vo);
		/* m.addAttribute("pwd", pwd); */
		if (pwd == 1) {
			System.out.println("비밀번호 일치");
			return "redirect:/edit?email=" + vo.getEmail();
		} else {
			System.out.println("비밀번호 불일치");
			return "mypage/pwderror";
		}
	}
	/* 0824 박원빈 수정 끝 */

	/* 0825 박원빈 수정 */
	/* 비밀번호 수정 및 업데이트 */
	@GetMapping(value = "/pwdedit")
	public String pwdEdit(Model m, String email, HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		m.addAttribute("vo", vo);
		return "mypage/EditPwd";
	}

	@PostMapping(value = "/pwdupdate")
	public String pwdUpdate(MemVO vo) {
		memberDaointer.pwdEdit(vo);
		System.out.println("변경된 비밀번호" + vo.getPwd());
		return "redirect:/mypage?email=" + vo.getEmail();
	}

	/* 0825 박원빈 수정 중 */

	// 0902_박형지: 펀딩 참여 리스트
	@GetMapping("/funpartiList")
	public String fpList(Model m, int fmem_num) {
		List<FBoardVO> fplist = mypageinter.fplist(fmem_num);
		System.out.println("fplist" + fplist);
		m.addAttribute("fplist", fplist);
		return "mypage/myfunList";
	}

	// 0906_박형지: 인증 정보 확인 폼
	@GetMapping("/artistDetail")
	public String artistDetailForm(Model m, @RequestParam(value = "email") String email, Model model,
			HttpSession session) {
		MemVO vo = memberDaointer.myPage(email);
		model.addAttribute("vo", vo);
		return "mypage/MyArtistInfo";
	}
}
