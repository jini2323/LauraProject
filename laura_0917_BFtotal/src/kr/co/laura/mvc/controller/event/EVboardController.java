package kr.co.laura.mvc.controller.event;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.laura.mvc.dao.EVboardDaoInter;
import kr.co.laura.mvc.vo.EVPPageVO;
import kr.co.laura.mvc.vo.EVPboardVO;
import kr.co.laura.mvc.vo.EVboardVO;
import kr.co.laura.mvc.vo.EVpageVO;

@Controller
public class EVboardController {

	// 비동기식 댓글 처리?
	private List<Map<String, String>> evCommList;

	public EVboardController() {
		evCommList = new ArrayList<Map<String, String>>();
	}
	// 비동기식 댓글 처리 끝

	@Autowired
	private EVboardDaoInter evboardDaoInter;

	@Autowired
	private EVpageVO evPageVO;

	@Autowired
	private EVPPageVO evpPageVO;

	@GetMapping("/eventform") // 업로드 폼
	public String eventForm() {
		return "event/eventForm";
	}

	///// 종료된 이벤트

	@RequestMapping("/eventEnd")
	public String endEventPage(Model model) {

		return "event/evEndList";
	}

	@RequestMapping("/eventMain") // 페이징처리 +검색 기능 완료
	public String evBoardList(Model model, @RequestParam Map<String, String> paramMap) {

		String stype = paramMap.get("searchType");
		String sname = paramMap.get("searchValue");
		String cPage = paramMap.get("cPage");

		evPageVO.setTotalRecord(evboardDaoInter.getTotal(paramMap));

		int totalRecord = evPageVO.getTotalRecord();
		System.out.println("1. TotalRecord :" + totalRecord);

		evPageVO.setTotalPage((int) Math.ceil(totalRecord / (double) evPageVO.getNumPerPage()));
		evPageVO.setTotalBlock((int) Math.ceil((double) evPageVO.getTotalPage() / evPageVO.getPagePerBlock()));

		if (cPage != null) {
			evPageVO.setNowPage(Integer.parseInt(cPage));
		} else {
			evPageVO.setNowPage(1);
		}

		evPageVO.setBeginPerPage((evPageVO.getNowPage() - 1) * evPageVO.getNumPerPage() + 1);
		evPageVO.setEndPerPage((evPageVO.getBeginPerPage() - 1) + evPageVO.getNumPerPage());

		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(evPageVO.getBeginPerPage()));
		map.put("end", String.valueOf(evPageVO.getEndPerPage()));
		// map에 parmaMap을 합치기
		map.putAll(paramMap);
		List<EVboardVO> evList = evboardDaoInter.listEVboard(map);

		int startPage = (int) ((evPageVO.getNowPage() - 1) / evPageVO.getPagePerBlock()) * evPageVO.getPagePerBlock()
				+ 1;

		int endPage = startPage + evPageVO.getPagePerBlock() - 1;

		if (endPage > evPageVO.getTotalPage()) {
			endPage = evPageVO.getTotalPage();
		}
		// 검색값을 view로 전달

		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("searchValue", map.get("searchValue"));

		model.addAttribute("startPage", startPage);// 블록에 시작페이지값
		model.addAttribute("endPage", endPage);// 블록에 시작페이지값
		model.addAttribute("page", evPageVO); // nowPage,pagePerBlock,totalPage
		model.addAttribute("evList", evList);

		return "event/evDoingList";
	}

	// 글쓰기 완료 리아디렉트 리스트
	@PostMapping("/evInsert")
	public String evboardInsert(Model model, EVboardVO vo, HttpServletRequest request) {

		String img_path = "resources\\img\\eventImg"; // 여기(서버에) 이미지 저장! 스프링 내부 ㄴㄴ
		// 이클립스 상에서 저장할 경로
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// 확인
		System.out.println("r_path:" + r_path);

		MultipartFile mf = vo.getEvfile();
		MultipartFile mf2 = vo.getEvfile2();

		String originalFN = mf.getOriginalFilename();
		String originalFN2 = mf2.getOriginalFilename();
		System.out.println("ofn:" + originalFN);
		System.out.println("ofn2:" + originalFN2);

		// full 경로
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		path.append(originalFN);
		System.out.println("Fullpath:" + path);

		// full 경로2
		StringBuffer pathT = new StringBuffer();
		pathT.append(r_path).append(img_path).append("\\");
		pathT.append(originalFN2);
		System.out.println("FullpathT:" + pathT);

		// 추상경로 (이미지를 저장할 경로 ) File 객체로 생성
		File f = new File(path.toString());
		File fB = new File(pathT.toString());

		try {
			mf.transferTo(f);
			vo.setEvImg(originalFN);
			System.out.println("이미지 이름" + vo.getEvImg());
			// 이미지 이름을 db에 저장하기 위해서 vo 값에 재설정
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		try {
			mf2.transferTo(fB);
			vo.setEvVeo(originalFN2);
			System.out.println("이미지 이름2" + vo.getEvVeo());
			// 이미지 이름을 db에 저장하기 위해서 vo 값에 재설정
		} catch (IllegalStateException | IOException e2) {
			e2.printStackTrace();
		}

		System.out.println("Event 업로드 파일 목록 ===========================");

		StringBuffer path2 = new StringBuffer();
		path2.append(r_path).append(img_path).append("\\");

		File f2 = new File(path2.toString());
		File[] flist = f2.listFiles(); // 모든 파일 이름을 리스트로 받아옥디

		for (File e : flist) {
			System.out.println(e.getName());
		}
		System.out.println("Event  업로드 파일 목록 ===========================");

		// dao 값 전달
		evboardDaoInter.addEVboard(vo);
		// 테스트
		// System.out.println("제목: " + vo.getEvTitle());

		return "redirect:/eventMain";
	}

	// 조회수 처리
	@GetMapping("/eventHit")
	public String evboardHit(int evNum) {
		evboardDaoInter.upHit(evNum);
		return "redirect:eventDetail?evNum=" + evNum;
	}

	// 게시물 삭제
	@GetMapping("/eventDel")
	public String evboardDel(int evNum) {
		evboardDaoInter.evBoardDel(evNum);
		System.out.println("control:" + evNum);
		return "redirect:eventMain";
	}

	// 게시물 수정처리
	// 1. 수정 폼
	@GetMapping("/eventModForm") // 업로드 폼
	public String eventModForm(Model model, int evNum) {

		System.out.println("게시글 수정 폼 파라미터 확인:" + evNum);
		EVboardVO vo = evboardDaoInter.evBoardDetail(evNum);
		// System.out.println("test reward:"+vo.getReward());
		// System.out.println("test 이벤트시작일:"+vo.getEvSdate());
		// 시작일을 날짜형 데이터로 바꿔보기>???
		String evSdate = vo.getEvSdate();
		vo.setEvSdate(evSdate);
		vo.setEvNum(evNum);
		model.addAttribute("vo", vo);

		return "event/evModifyForm";
	}

	// 2. 수정post
	@PostMapping("/evModify")
	public String evboardModify(Model model, @RequestParam int evNum, EVboardVO vo, HttpServletRequest request) {

		System.out.println("evModify 파라미터 테스트:" + evNum); // 정수로 잘 받아져옴

		System.out.println("===================파라미터 기본 테스트 ");

		String img_path = "resources\\img\\eventImg"; // 여기(서버에) 이미지 저장! 스프링 내부 ㄴㄴ
		// 이클립스 상에서 저장할 경로
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// 확인
		System.out.println("r_path:" + r_path);

		MultipartFile mf = vo.getEvfile();
		MultipartFile mf2 = vo.getEvfile2();

		String originalFN = mf.getOriginalFilename();
		String originalFN2 = mf2.getOriginalFilename();
		System.out.println("ofn:" + originalFN);
		System.out.println("ofn2:" + originalFN2);

		// full 경로
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		path.append(originalFN);
		System.out.println("Fullpath:" + path);

		// full 경로2
		StringBuffer pathT = new StringBuffer();
		pathT.append(r_path).append(img_path).append("\\");
		pathT.append(originalFN2);
		System.out.println("FullpathT:" + pathT);

		// 추상경로 (이미지를 저장할 경로 ) File 객체로 생성
		File f = new File(path.toString());
		File fB = new File(pathT.toString());

		try {
			mf.transferTo(f);
			vo.setEvImg(originalFN);
			System.out.println("이미지 이름" + vo.getEvImg());
			// 이미지 이름을 db에 저장하기 위해서 vo 값에 재설정
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		try {
			mf2.transferTo(fB);
			vo.setEvVeo(originalFN2);
			System.out.println("이미지 이름2" + vo.getEvVeo());
			// 이미지 이름을 db에 저장하기 위해서 vo 값에 재설정
		} catch (IllegalStateException | IOException e2) {
			e2.printStackTrace();
		}

		System.out.println("수정 Event 업로드 파일 목록 ===========================");

		StringBuffer path2 = new StringBuffer();
		path2.append(r_path).append(img_path).append("\\");

		File f2 = new File(path2.toString());
		File[] flist = f2.listFiles(); // 모든 파일 이름을 리스트로 받아옥디

		for (File e : flist) {
			System.out.println(e.getName());
		}
		System.out.println("수정 Event  업로드 파일 목록 ===========================");

		/*
		 * System.out.println("==============vo테스트"); System.out.println(vo.getEvNum());
		 * System.out.println(vo.getEvTitle()); System.out.println(vo.getEvContent());
		 * System.out.println("이미지이름 "+vo.getEvImg());
		 * System.out.println("비디오이름 "+vo.getEvVeo());
		 * System.out.println("보상 "+vo.getReward());
		 */

		// dao 값 전달 //여기서 오류
		evboardDaoInter.evBoardModify(vo);
		// 테스트
		System.out.println("modify con=> 제목: " + vo.getEvTitle());

		return "redirect:eventDetail?evNum=" + evNum;
	}

	/*
	 * // hitSearch 딱히 필욘 없음
	 * 
	 * @GetMapping("/hitSearch") public void hitSearch(Model
	 * model, @RequestParam(required = true) String sv) { System.out.println(sv); }
	 */

	// 댓글영역////////////////////////////////////////////////
	// eventCommInsert 부모키를 받아와야하는 문제점
	@PostMapping("/evCommInsert")
	public String evCommInsert(EVPboardVO pvo, Model model, @RequestParam int evNum) {

		// System.out.println("댓글 evNum 확인:"+evNum);
		pvo.setEvboardNum(evNum);
		evboardDaoInter.addEvpComm(pvo);

		return "redirect:eventDetail?evNum=" + pvo.getEvboardNum() + "&type=comm#comm";
	}

	
	
	
	
// boardDetail // 보드 디테일 메소드 를 수정한것 댓글포함 //비동기식 댓글 리스트 
	@GetMapping("/eventDetail")
	public String evboardDetail(Model model, @RequestParam int evNum,
			@RequestParam(defaultValue = "Detail") String type, @RequestParam Map<String, String> paramMap) {
		
		// 댓글 쪽 오는거 아니면 걍 조회수만 올린다
		if (!type.equals("comm")) {
			evboardDaoInter.upHit(evNum);
		} else {
			//
		}
		
		// 1. 게시판 상세보기  
		EVboardVO vo = evboardDaoInter.evBoardDetail(evNum);
		model.addAttribute("vo", vo);
		
		 //2. evNum => evboardNum로 전달하기 
		paramMap.put("evboardNum", String.valueOf(evNum));
		
		
		// 3. 댓글 리스트의 총 수 구하기 
		evpPageVO.setTotalRecord(evboardDaoInter.getCommTotal(paramMap));
		System.out.println("컨트롤러 댓글 총 수 확인: "+evboardDaoInter.getCommTotal(paramMap));
		
		//댓글 페이징처리 
		String cPage = paramMap.get("cPage");
		//System.out.println("cpage:"+cPage);
		
		int totalRecord = evpPageVO.getTotalRecord();
		System.out.println("1. 댓글- TotalRecord :" + totalRecord);

		evpPageVO.setTotalPage((int) Math.ceil(totalRecord / (double) evpPageVO.getNumPerPage()));
		evpPageVO.setTotalBlock((int) Math.ceil((double) evpPageVO.getTotalPage() / evpPageVO.getPagePerBlock()));

		if (cPage != null) {
			evpPageVO.setNowPage(Integer.parseInt(cPage));
		} else {
			evpPageVO.setNowPage(1);
		}

		evpPageVO.setBeginPerPage((evpPageVO.getNowPage() - 1) * evpPageVO.getNumPerPage() + 1);
		evpPageVO.setEndPerPage((evpPageVO.getBeginPerPage() - 1) + evpPageVO.getNumPerPage());

		
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(evpPageVO.getBeginPerPage()));
		map.put("end", String.valueOf(evpPageVO.getEndPerPage()));
		
		
		
		map.putAll(paramMap); // map에 parmaMap을 합치기
		
		List<EVPboardVO> evListComm = evboardDaoInter.listCommBoard(map);  
		
		int startPage = (int) ((evpPageVO.getNowPage() - 1) / evpPageVO.getPagePerBlock()) * evpPageVO.getPagePerBlock()
				+ 1;

		int endPage = startPage + evpPageVO.getPagePerBlock() - 1;

		if (endPage > evpPageVO.getTotalPage()) {
			endPage = evpPageVO.getTotalPage();
		}

		model.addAttribute("startPage", startPage);// 블록에 시작페이지값
		model.addAttribute("endPage", endPage);// 블록에 시작페이지값
		model.addAttribute("page", evpPageVO); // nowPage,pagePerBlock,totalPage
		model.addAttribute("evListComm", evListComm);
		
		
		return "event/evDoingDetail";
	} // boardDetail//////////////

	
	
	
	// 댓글 삭제
	@GetMapping("evCommDel")
	public String evCommDel(EVPboardVO pvo, Model model, EVboardVO vo) {
		// System.out.println("게시글 evNum:"+vo.getEvNum());
		// System.out.println("댓글 evpNum:"+pvo.getEvpNum());
		int evpNum = pvo.getEvpNum();
		evboardDaoInter.evCommDel(evpNum);
		return "redirect:eventDetail?evNum=" + vo.getEvNum() + "&type=comm#comm";
	}

	// 댓글 수정
	@PostMapping("evCommMod")
	public String evCommMod(EVPboardVO pvo, Model model) {
		// System.out.println("댓글 evpNum:"+pvo.getEvpNum());
		// System.out.println("status: "+pvo.getEvStatus());
		evboardDaoInter.evCommModify(pvo);
		return "redirect:eventDetail?evNum=" + pvo.getEvboardNum() + "&type=comm#comm";
	}
	
	
	
	//////////////////////////////////////////////////
	// eventDetail?evNum= 디테일 기본형 백업
	// @GetMapping("/eventDetail")
	public String evboardDetail(Model model, @RequestParam int evNum) {

		EVboardVO vo = evboardDaoInter.evBoardDetail(evNum);
		model.addAttribute("vo", vo);
		// System.out.println("controller 게시판 넘버:"+vo.getEvNum());

		return "event/evDoingDetail";
	}

}
