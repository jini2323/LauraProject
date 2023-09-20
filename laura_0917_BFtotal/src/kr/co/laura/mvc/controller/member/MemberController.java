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
	

	// ȸ������ ��� ����
	@GetMapping("/memForm")
	public String memForm() {
		return "member/join";
	}

	// �̸��� ȸ������ ��
	@GetMapping("/email_join")
	public String email_join() {
		return "member/joinForm";
	}

	@GetMapping("/idcheck")
	@ResponseBody
	public String idCheck(@RequestParam(required = true) String email) { // ���̵�üũ
		int res = memberDaointer.emailCheck(email);
		System.out.println("res=>" + res);
		return String.valueOf(res);
	}

	@GetMapping("/nickcheck")
	@ResponseBody
	public String nickCheck(@RequestParam(required = true) String nickname) { // ���̵�üũ
		int res = memberDaointer.nickCheck(nickname);
		System.out.println("nick=>" + res);
		return String.valueOf(res);
	}

	@GetMapping("/telcheck")
	@ResponseBody
	public String telCheck(@RequestParam(required = true) String tel) { // ���̵�üũ
		int res = memberDaointer.telCheck(tel);
		System.out.println("tel=>" + res);
		return String.valueOf(res);
	}

	// 0903_������: ������ ���ε� �߰�
	@PostMapping("/joinComplete")
	public String getJoin(Model model, MemVO vo, HttpServletRequest request) {
		
	
		
		String img_path = "resources\\img\\member";
		// ��Ŭ���� �󿡼� ������ ���
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// Ȯ��
		System.out.println("r_path:" + r_path);

		MultipartFile prmf = vo.getPrfile();
		String originalFN = prmf.getOriginalFilename();
		System.out.println("ofn:" + originalFN);

		// full ���
		StringBuffer prpath = new StringBuffer();
		prpath.append(r_path).append(img_path).append("\\");
		prpath.append(originalFN);
		System.out.println("Fullpath:" + prpath);

		// �߻��� (�̹����� ������ ��� ) File ��ü�� ����
		File prf = new File(prpath.toString());

		try {
			prmf.transferTo(prf);
			vo.setProfilepic(originalFN);

			// �̹��� �̸��� db�� �����ϱ� ���ؼ� vo ���� �缳��
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		System.out.println("���ε� ���� ��� ===========================");

		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		File f2 = new File(path.toString());
		File[] flist = f2.listFiles(); // ��� ���� �̸��� ����Ʈ�� �޾ƿ���

		/*
		 * for (File e : flist) { System.out.println(e.getName()); }
		 */
		System.out.println("���ε� ���� ��� ===========================");

		// dao �� ����
		memberDaointer.join(vo);
		// �׽�Ʈ
		System.out.println("����: " + vo.getProfilepic());
		
		return "redirect:/main";
	}

	/*
	 * 0826_�̼��� (������ ������) ȸ��Ż�� => �Խñ��̳� ��� �����͵� ������ �ʰ� ��� ���� �� ���������� ����
	 */
	@RequestMapping("/delete") // Ż�� ���� ���� ��Ʈ�ѷ�
	public String myinfodel(Model model, String email) throws Exception {
		MemVO vo = memberDaointer.myPage(email);
		model.addAttribute("deletevo", vo);
		return "mypage/memberDelete";
	}

	@RequestMapping("/memDelete") // Ż�� ���������� �����ϴ� ����� ��Ʈ�ѷ�
	public String memberDelete(MemVO vo, HttpSession session, RedirectAttributes rttr, Model model, String email)
			throws Exception {
		// ���ǿ��ִ� ��й�ȣ
		String sessionPass = (String) session.getAttribute("sessionPwd");
		// vo�� ������ ��й�ȣ
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
	// ����� �� :
	// �޴����� ����Ʈ �ٷ� �̵� : cPage, sType, sValue = null
	// ������ ��ȣ : cPage = 2, sType, sValue = null
	// �˻��� ���� : cPage = 2, sType = 1,2,3, sValue = �˻���
	public String memberList(Model model, @RequestParam Map<String, String> paramMap) {
		String stype = paramMap.get("searchType");
		String sname = paramMap.get("searchValue");
		String cPage = paramMap.get("cPage");

		System.out.println("cPage: �Ķ����: " + cPage);
		System.out.println("sType: �˻��� �Ķ����: " + paramMap.get("searchType"));
		System.out.println("sname: �˻� �� : " + paramMap.get("searchValue"));
		System.out.println("********************************");

		pageVO.setTotalRecord(memberDaointer.getCnt(paramMap));
		int totalRecord = pageVO.getTotalRecord();
		System.out.println("1. TotalRecord :" + totalRecord);
		/*
		 * 2. totalPage ������ Ÿ������ ���� totalPage
		 * =(int)Math.ceil(totalRecord/(double)numPerPage);
		 * System.out.println("2. totalPage :" + totalPage);
		 */
		pageVO.setTotalPage((int) Math.ceil(totalRecord / (double) pageVO.getNumPerPage()));

		System.out.println("2. totalPage :" + pageVO.getTotalPage());
		/*
		 * 3. totalBlock // ��ü ��� ���ϱ� => ��ü������(totalPage)/�����ٺ�ϼ�(pagePerBlock) //
		 * totalBlock = 6/5; totalBlock = (int) Math.ceil((double) totalPage /
		 * pagePerBlock); System.out.println("3. totalBlock :" + totalBlock);
		 * 
		 */
		pageVO.setTotalBlock((int) Math.ceil((double) pageVO.getTotalPage() / pageVO.getPagePerBlock()));

		// ���� �������� ��û�� �� �Ķ���ͷ� ���� ���������� �޴´�. 1 ~~~~~~~ n
		// String s_page = String.valueOf(cPage); // �����丵 ����
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

		// ����¡ �׽�Ʈ
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(pageVO.getBeginPerPage()));
		map.put("end", String.valueOf(pageVO.getEndPerPage()));
		// map�� parmaMap�� ��ġ��
		map.putAll(paramMap);
		// �˼�
		System.out.println("=====Map All=====");
		for (Map.Entry<String, String> e : map.entrySet()) {
			System.out.println(e.getKey() + ":" + e.getValue());
		}

		List<MemVO> list = memberDaointer.memList(map);

		/*
		 * int startPage = (int)((nowPage - 1) / pagePerBlock) * pagePerBlock + 1; int
		 * endPage = startPage + pagePerBlock - 1; // endPage�� ������ ������ �츮�� ���� totalPage��
		 * �̸��̶�� // totalPage�� ������ ���Խ�Ų��. if (endPage > totalPage) { endPage =
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

		// �˻����� view�� ����
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("searchValue", map.get("searchValue"));

		model.addAttribute("startPage", startPage);// ��Ͽ� ������������
		model.addAttribute("endPage", endPage);// ��Ͽ� ������������
		model.addAttribute("page", pageVO); // nowPage,pagePerBlock,totalPage
		model.addAttribute("list", list);
		return "member/memberList";
	}

}