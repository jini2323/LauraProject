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

	@RequestMapping("/fboardList") // 리스트 +페이징 처리 추가
	public String fboardList(Model model, @RequestParam Map<String, String> paramMap) {

		String stype = paramMap.get("searchType");
		String sname = paramMap.get("searchValue");
		String cPage = paramMap.get("cPage");

		System.out.println("cPage: 파라미터: " + cPage);
		System.out.println("sType: 검색시 파라미터: " + paramMap.get("searchType"));
		System.out.println("sname: 검색 값 : " + paramMap.get("searchValue"));
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

		List<FBoardVO> boardList = fboardDaoInter.listFBoard(map);

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
		model.addAttribute("boardList", boardList);

		return "funding/fboardList";
	}

	/*
	 * @GetMapping("/upform") // 업로드 폼 public String uploadForm() { return
	 * "upload/fboardFoam"; }
	 */

	@GetMapping("/fupform") // 펀딩 업로드 폼
	public String fuploadForm() {
		return "fupload/fboardForm";
	}

	// 글쓰기 완료 리아디렉트 리스트
	@PostMapping("/finsert")
	public String uploadInsert(Model model, FBoardVO vo, HttpServletRequest request) {

		// fboard_img
		String img_path = "resources\\img\\fboard"; // 여기(서버에) 이미지 저장! 스프링 내부 ㄴㄴ
		// 이클립스 상에서 저장할 경로
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// 확인
		System.out.println("r_path:" + r_path);

		MultipartFile mf = vo.getMfile();
		String originalFN = mf.getOriginalFilename();
		System.out.println("ofn:" + originalFN);

		// full 경로
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		path.append(originalFN);
		System.out.println("Fullpath:" + path);

		// 추상경로 (이미지를 저장할 경로 ) File 객체로 생성
		File f = new File(path.toString());

		try {
			mf.transferTo(f);
			vo.setPostimgn(originalFN);
			// 이미지 이름을 db에 저장하기 위해서 vo 값에 재설정
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		System.out.println("업로드 파일 목록 ===========================");

		StringBuffer path2 = new StringBuffer();
		path2.append(r_path).append(img_path).append("\\");
		File f2 = new File(path2.toString());
		File[] flist = f2.listFiles(); // 모든 파일 이름을 리스트로 받아옥디

		for (File e : flist) {
			System.out.println(e.getName());
		}
		System.out.println("업로드 파일 목록 ===========================");

		// dao 값 전달
		fboardDaoInter.addFBoard(vo);
		// 테스트
		System.out.println("제목: " + vo.getFuntitle());

		return "redirect:/fboardList";
	}

	// 조회수
	/*
	 * @GetMapping("/upHit") public String upBoardHit(int fnum) {
	 * fboardDaoInter.upHit(fnum); return "redirect:/fboardDetail?fnum=" + fnum; }
	 */

	// 디테일
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
		 * // 펀딩 디테일 처음 들어가면 당연히 FundingPartiVO 관련 vo들은 null // funstatus만 뽑아내서 상태 확인하는데
		 * 계속 0
		 * 
		 * // System.out.println("펀딩 참여 상태: " + fp); if (sts == 1) {
		 * System.out.println("Fpstatus: P"); } else {
		 * System.out.println("Fpstatus: N"); }
		 */
		return "funding/fdetail_ing";

	}

	// 글 수정 : 리아이렉트 디테일

	// 글 삭제 : 리다이렉트 리스트

	// 0711_펀딩참여
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
