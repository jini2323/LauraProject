package kr.co.laura.mvc.controller.fboard;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
import org.springframework.web.multipart.MultipartFile;

import kr.co.laura.mvc.dao.FBoardDaoInter;
import kr.co.laura.mvc.dao.MypageDaoInter;
import kr.co.laura.mvc.vo.CPageVO;
import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.FundingPartiVO;
import kr.co.laura.mvc.vo.PageVO;

@Controller
public class FboardController {

	@Autowired
	private FBoardDaoInter fboardDaoInter;

	@Autowired
	private PageVO pageVO;

	@Autowired
	private CPageVO cpVO;

	@Autowired
	private MypageDaoInter mypageinter;

	@RequestMapping("/fboardList") // ����Ʈ +����¡ ó�� �߰�
	public String fboardList(Model model, @RequestParam Map<String, String> paramMap) {

		String stype = paramMap.get("searchType");
		String sname = paramMap.get("searchValue");
		String cPage = paramMap.get("cPage");

		System.out.println("cPage: �Ķ����: " + cPage);
		System.out.println("sType: �˻��� �Ķ����: " + paramMap.get("searchType"));
		System.out.println("sname: �˻� �� : " + paramMap.get("searchValue"));
		System.out.println("********************************");

		pageVO.setTotalRecord(fboardDaoInter.getTotal(paramMap));
		int totalRecord = pageVO.getTotalRecord();
		System.out.println("1. TotalRecord :" + totalRecord);

		pageVO.setTotalPage((int) Math.ceil(totalRecord / (double) pageVO.getNumPerPage()));
		System.out.println("2. totalPage :" + pageVO.getTotalPage());

		pageVO.setTotalBlock((int) Math.ceil((double) pageVO.getTotalPage() / pageVO.getPagePerBlock()));

		if (cPage != null) {
			// nowPage = Integer.parseInt(s_page);
			pageVO.setNowPage(Integer.parseInt(cPage));
		} else {
			pageVO.setNowPage(1);
		}
		System.out.println("4. nowPage :" + pageVO.getNowPage());

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

		List<FBoardVO> boardList = fboardDaoInter.listFBoard(map);

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
		model.addAttribute("boardList", boardList);

		return "funding/fboardList";
	}

	/*
	 * @GetMapping("/upform") // ���ε� �� public String uploadForm() { return
	 * "upload/fboardFoam"; }
	 */

	@GetMapping("/fupform") // �ݵ� ���ε� ��
	public String fuploadForm() {
		return "fupload/fboardForm";
	}

	// �۾��� �Ϸ� ���Ƶ�Ʈ ����Ʈ
	@PostMapping("/finsert")
	public String uploadInsert(Model model, FBoardVO vo, HttpServletRequest request) {

		// fboard_img
		String img_path = "resources\\img\\fboard"; // ����(������) �̹��� ����! ������ ���� ����
		// ��Ŭ���� �󿡼� ������ ���
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// Ȯ��
		System.out.println("r_path:" + r_path);

		MultipartFile mf = vo.getMfile();
		String originalFN = mf.getOriginalFilename();
		System.out.println("ofn:" + originalFN);

		// full ���
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		path.append(originalFN);
		System.out.println("Fullpath:" + path);

		// �߻��� (�̹����� ������ ��� ) File ��ü�� ����
		File f = new File(path.toString());

		try {
			mf.transferTo(f);
			vo.setPostimgn(originalFN);
			// �̹��� �̸��� db�� �����ϱ� ���ؼ� vo ���� �缳��
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		System.out.println("���ε� ���� ��� ===========================");

		StringBuffer path2 = new StringBuffer();
		path2.append(r_path).append(img_path).append("\\");
		File f2 = new File(path2.toString());
		File[] flist = f2.listFiles(); // ��� ���� �̸��� ����Ʈ�� �޾ƿ���

		for (File e : flist) {
			System.out.println(e.getName());
		}
		System.out.println("���ε� ���� ��� ===========================");

		// dao �� ����
		fboardDaoInter.addFBoard(vo);
		// �׽�Ʈ
		System.out.println("����: " + vo.getFuntitle());

		return "redirect:/fboardList";
	}

	// ��ȸ��
	/*
	 * @GetMapping("/upHit") public String upBoardHit(int fnum) {
	 * fboardDaoInter.upHit(fnum); return "redirect:/fboardDetail?fnum=" + fnum; }
	 */

	// ������
	@GetMapping("/fboardDetail")
	public String fboardDetail(Model model, @RequestParam int funnum, Map<String, String> paramMap, FundingPartiVO fpvo,
			HttpSession session) {

		FBoardVO vo = fboardDaoInter.fboardDetail(funnum);
		model.addAttribute("vo", vo);

		FundingPartiVO pvo = fboardDaoInter.funCheck(fpvo);
		model.addAttribute("pvo", pvo);

		/*
		 * int sts = fboardDaoInter.chkfunstatus(fpvo); // model.addAttribute("sts",
		 * sts);
		 * 
		 * // �ݵ� ������ ó�� ���� �翬�� FundingPartiVO ���� vo���� null // funstatus�� �̾Ƴ��� ���� Ȯ���ϴµ�
		 * ��� 0
		 * 
		 * // System.out.println("�ݵ� ���� ����: " + fp); if (sts == 1) {
		 * System.out.println("Fpstatus: P"); } else {
		 * System.out.println("Fpstatus: N"); }
		 */
		return "funding/fdetail_ing";

	}

	// �� ���� : �����̷�Ʈ ������

	// �� ���� : �����̷�Ʈ ����Ʈ

	// 0711_�ݵ�����
	@GetMapping("/addFCoin")
	public String addFCoin(Model model, FundingPartiVO pvo, HttpSession session) {
		fboardDaoInter.addFCoin(pvo);
		FundingPartiVO vo = fboardDaoInter.funCheck(pvo);
		model.addAttribute("vo", vo);

		session.setAttribute("sessionFpstatus", vo.getFunstatus());

		return "funding/fundingResult";
	}

	// @RequestMapping("fchkForm")
	public String fchkForm() {
		return "funding/fundingResult";
	}

}
