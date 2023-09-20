package kr.co.laura.mvc.controller.member;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.laura.mvc.dao.MemDaoInter;
import kr.co.laura.mvc.vo.MemVO;
import kr.co.laura.mvc.vo.PageVO;

@Controller
public class MemberController {

	@Autowired
	private MemDaoInter memberDaointer;

	@Autowired
	private PageVO pageVO;
	

	// 회원가입 방식 선택
	@GetMapping("/memForm")
	public String memForm() {
		return "member/join";
	}

	// 이메일 회원가입 폼
	@GetMapping("/email_join")
	public String email_join() {
		return "member/joinForm";
	}

	@GetMapping("/idcheck")
	@ResponseBody
	public String idCheck(@RequestParam(required = true) String email) { // 아이디체크
		int res = memberDaointer.emailCheck(email);
		System.out.println("res=>" + res);
		return String.valueOf(res);
	}

	@GetMapping("/nickcheck")
	@ResponseBody
	public String nickCheck(@RequestParam(required = true) String nickname) { // 아이디체크
		int res = memberDaointer.nickCheck(nickname);
		System.out.println("nick=>" + res);
		return String.valueOf(res);
	}

	@GetMapping("/telcheck")
	@ResponseBody
	public String telCheck(@RequestParam(required = true) String tel) { // 아이디체크
		int res = memberDaointer.telCheck(tel);
		System.out.println("tel=>" + res);
		return String.valueOf(res);
	}

	// 0903_박형지: 프로필 업로드 추가
	@PostMapping("/joinComplete")
	public String getJoin(Model model, MemVO vo, HttpServletRequest request) {
		
	
		
		String img_path = "resources\\img\\member";
		// 이클립스 상에서 저장할 경로
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// 확인
		System.out.println("r_path:" + r_path);

		MultipartFile prmf = vo.getPrfile();
		String originalFN = prmf.getOriginalFilename();
		System.out.println("ofn:" + originalFN);

		// full 경로
		StringBuffer prpath = new StringBuffer();
		prpath.append(r_path).append(img_path).append("\\");
		prpath.append(originalFN);
		System.out.println("Fullpath:" + prpath);

		// 추상경로 (이미지를 저장할 경로 ) File 객체로 생성
		File prf = new File(prpath.toString());

		try {
			prmf.transferTo(prf);
			vo.setProfilepic(originalFN);

			// 이미지 이름을 db에 저장하기 위해서 vo 값에 재설정
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		System.out.println("업로드 파일 목록 ===========================");

		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		File f2 = new File(path.toString());
		File[] flist = f2.listFiles(); // 모든 파일 이름을 리스트로 받아옥디

		/*
		 * for (File e : flist) { System.out.println(e.getName()); }
		 */
		System.out.println("업로드 파일 목록 ===========================");

		// dao 값 전달
		memberDaointer.join(vo);
		// 테스트
		System.out.println("제목: " + vo.getProfilepic());
		
		return "redirect:/main";
	}

	/*
	 * 0826_이성근 (형지가 도와줌) 회원탈퇴 => 게시글이나 댓글 같은것들 남기지 않고 모든 정보 싹 지워버리는 형식
	 */
	@RequestMapping("/delete") // 탈퇴 폼을 띄우는 컨트롤러
	public String myinfodel(Model model, String email) throws Exception {
		MemVO vo = memberDaointer.myPage(email);
		model.addAttribute("deletevo", vo);
		return "mypage/memberDelete";
	}

	@RequestMapping("/memDelete") // 탈퇴를 실질적으로 진행하는 기능의 컨트롤러
	public String memberDelete(MemVO vo, HttpSession session, RedirectAttributes rttr, Model model, String email)
			throws Exception {
		// 세션에있는 비밀번호
		String sessionPass = (String) session.getAttribute("sessionPwd");
		// vo로 들어오는 비밀번호
		String voPass = vo.getPwd();

		if (!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/delete?email=" + vo.getEmail();
		}
		memberDaointer.memDelete(vo);
		session.invalidate();
		return "redirect:/main";
	}

	// @GetMapping("/memberList")
	public String getMembers(Model model, Map<String, String> map) {
		List<MemVO> list = memberDaointer.memList(map);
		model.addAttribute("list", list);
		return "member/memberList";
	}

	@RequestMapping("/memberList")
	// public String upBoardList(Model model, @RequestParam(defaultValue = "1") int
	// cPage) {
	// 경우의 수 :
	// 메뉴에서 리스트 바로 이동 : cPage, sType, sValue = null
	// 페이지 번호 : cPage = 2, sType, sValue = null
	// 검색을 진행 : cPage = 2, sType = 1,2,3, sValue = 검색값
	public String memberList(Model model, @RequestParam Map<String, String> paramMap) {
		String stype = paramMap.get("searchType");
		String sname = paramMap.get("searchValue");
		String cPage = paramMap.get("cPage");

		System.out.println("cPage: 파라미터: " + cPage);
		System.out.println("sType: 검색시 파라미터: " + paramMap.get("searchType"));
		System.out.println("sname: 검색 값 : " + paramMap.get("searchValue"));
		System.out.println("********************************");

		pageVO.setTotalRecord(memberDaointer.getCnt(paramMap));
		int totalRecord = pageVO.getTotalRecord();
		System.out.println("1. TotalRecord :" + totalRecord);
		/*
		 * 2. totalPage 스프링 타입으로 변경 totalPage
		 * =(int)Math.ceil(totalRecord/(double)numPerPage);
		 * System.out.println("2. totalPage :" + totalPage);
		 */
		pageVO.setTotalPage((int) Math.ceil(totalRecord / (double) pageVO.getNumPerPage()));

		System.out.println("2. totalPage :" + pageVO.getTotalPage());
		/*
		 * 3. totalBlock // 전체 블록 구하기 => 전체페이지(totalPage)/보여줄블록수(pagePerBlock) //
		 * totalBlock = 6/5; totalBlock = (int) Math.ceil((double) totalPage /
		 * pagePerBlock); System.out.println("3. totalBlock :" + totalBlock);
		 * 
		 */
		pageVO.setTotalBlock((int) Math.ceil((double) pageVO.getTotalPage() / pageVO.getPagePerBlock()));

		// 현재 페이지를 요청할 때 파라미터로 현재 페이지값을 받는다. 1 ~~~~~~~ n
		// String s_page = String.valueOf(cPage); // 리팩토링 구간
		if (cPage != null) {
			// nowPage = Integer.parseInt(s_page);
			pageVO.setNowPage(Integer.parseInt(cPage));
		} else {
			pageVO.setNowPage(1);
		}
		System.out.println("4. nowPage :" + pageVO.getNowPage());
		/*
		 * beginPerPage = (nowPage - 1) * numPerPage + 1; endPerPage = (beginPerPage-1)
		 * + numPerPage; System.out.println("5. beginPerPage = "+beginPerPage);
		 * System.out.println("5. endPerPage = "+endPerPage);
		 * 
		 */
		pageVO.setBeginPerPage((pageVO.getNowPage() - 1) * pageVO.getNumPerPage() + 1);
		pageVO.setEndPerPage((pageVO.getBeginPerPage() - 1) + pageVO.getNumPerPage());
		System.out.println("5. beginPerPage = " + pageVO.getBeginPerPage());
		System.out.println("5. endPerPage = " + pageVO.getEndPerPage());

		// 페이징 테스트
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(pageVO.getBeginPerPage()));
		map.put("end", String.valueOf(pageVO.getEndPerPage()));
		// map에 parmaMap을 합치기
		map.putAll(paramMap);
		// 검수
		System.out.println("=====Map All=====");
		for (Map.Entry<String, String> e : map.entrySet()) {
			System.out.println(e.getKey() + ":" + e.getValue());
		}

		List<MemVO> list = memberDaointer.memList(map);

		/*
		 * int startPage = (int)((nowPage - 1) / pagePerBlock) * pagePerBlock + 1; int
		 * endPage = startPage + pagePerBlock - 1; // endPage의 연산의 범위가 우리가 구한 totalPage값
		 * 미만이라면 // totalPage의 값으로 대입시킨다. if (endPage > totalPage) { endPage =
		 * totalPage; } System.out.println("6. startPage = "+ startPage);
		 * System.out.println("6. endPage = "+ endPage);
		 */
		int startPage = (int) ((pageVO.getNowPage() - 1) / pageVO.getPagePerBlock()) * pageVO.getPagePerBlock() + 1;

		int endPage = startPage + pageVO.getPagePerBlock() - 1;

		if (endPage > pageVO.getTotalPage()) {
			endPage = pageVO.getTotalPage();
		}
		System.out.println("6. startPage = " + startPage);
		System.out.println("6. endPage = " + endPage);

		// 검색값을 view로 전달
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("searchValue", map.get("searchValue"));

		model.addAttribute("startPage", startPage);// 블록에 시작페이지값
		model.addAttribute("endPage", endPage);// 블록에 시작페이지값
		model.addAttribute("page", pageVO); // nowPage,pagePerBlock,totalPage
		model.addAttribute("list", list);
		return "member/memberList";
	}

}