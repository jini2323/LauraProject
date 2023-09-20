package kr.co.laura.mvc.controller.party;

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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.laura.mvc.dao.PartyDaoInter;
import kr.co.laura.mvc.vo.CPageVO;
import kr.co.laura.mvc.vo.PageVO;
import kr.co.laura.mvc.vo.PartyCommVO;
import kr.co.laura.mvc.vo.PartyVO;

@Controller
public class PartyController {
	
	@Autowired
	private PartyDaoInter partyDaoInter;
	
	@Autowired
	private PageVO pageVO;
	
	@Autowired
	private CPageVO CPageVO;
	
	@GetMapping("/upparty")
	public String upPartyForm() {
		return "party/partyForm2";
	}
	
	@PostMapping("/pinsert")
	public String pInsert(Model model, PartyVO vo, HttpServletRequest request) {
		
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

		// 추상경로ㅗ (이미지를 저장할 경로 ) File 객체로 생성
		File f = new File(path.toString());

		try {
			mf.transferTo(f);
			vo.setPimgn(originalFN);
			// 이미지 이름을 db에 저장하기 위해서 vo 값에 재설정
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		System.out.println("업로드 파일 목록 ===========================");

		StringBuffer path2 = new StringBuffer();
		path2.append(r_path).append(img_path).append("\\");
		File f2 = new File(path2.toString());
		File[] flist = f2.listFiles(); // 모든 파일 이름을 리스트로 받아옥디

		System.out.println("업로드 파일 목록 ===========================");

		// dao 값 전달
		partyDaoInter.addParty(vo);
		// 테스트
		System.out.println("제목: " + vo.getPartytitle());
		
		return "redirect:/partyList";
	}
	
	@RequestMapping("/partyList")
	public String partyList(Model model,@RequestParam Map<String, String> map) {
		String stype = map.get("searchType");
		String sname = map.get("searchValue");
		String cPage = map.get("cPage");
		String sortingVal = map.get("sortingVal");
		
		pageVO.setTotalRecord(partyDaoInter.getTotal(map));
		int totalRecord = pageVO.getTotalRecord();
		System.out.println("1. TotalRecord :" + totalRecord);
		
		pageVO.setTotalPage((int) Math.ceil(totalRecord / (double) pageVO.getNumPerPage()));
		System.out.println("2. totalPage :" + pageVO.getTotalPage());
		pageVO.setTotalBlock((int) Math.ceil((double) pageVO.getTotalPage() / pageVO.getPagePerBlock()));

		
		if (cPage != null) {
			pageVO.setNowPage(Integer.parseInt(cPage));
		} else {
			pageVO.setNowPage(1);
		}
		System.out.println("4. nowPage :" + pageVO.getNowPage());
		pageVO.setBeginPerPage((pageVO.getNowPage() - 1) * pageVO.getNumPerPage() + 1);
		pageVO.setEndPerPage((pageVO.getBeginPerPage() - 1) + pageVO.getNumPerPage());
		System.out.println("5. beginPerPage = " + pageVO.getBeginPerPage());
		System.out.println("5. endPerPage = " + pageVO.getEndPerPage());

		Map<String, String> pamap = new HashMap<String, String>();
		pamap.put("begin", String.valueOf(pageVO.getBeginPerPage()));
		pamap.put("end", String.valueOf(pageVO.getEndPerPage()));
		
		pamap.putAll(map);
		
		System.out.println("===========Map All============");
		for (Map.Entry<String, String> e : map.entrySet()) {
			System.out.println(e.getKey() + "," + e.getValue());

		}
		
		List<PartyVO> plist = partyDaoInter.partyList(pamap);
		
		int startPage = (int) ((pageVO.getNowPage() - 1) / pageVO.getPagePerBlock()) * pageVO.getPagePerBlock() + 1;

		int endPage = startPage + pageVO.getPagePerBlock() - 1;

		if (endPage > pageVO.getTotalPage()) {
			endPage = pageVO.getTotalPage();
		}
		System.out.println("6. startPage = " + startPage);
		System.out.println("6. endPage = " + endPage);
		
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("searchValue", map.get("searchValue"));
		model.addAttribute("sortingVal", map.get("sortingVal"));

		model.addAttribute("startPage", startPage);// 블록에 시작페이지값
		model.addAttribute("endPage", endPage);// 블록에 시작페이지값
		model.addAttribute("page", pageVO); // nowPage,pagePerBlock,totalPage
		model.addAttribute("plist", plist);
		return "party/partyList";
	}
	
	@RequestMapping("/upPHit")
	public String upPartyHit(@RequestParam int partynum) {
		partyDaoInter.upHit(partynum);
		System.out.println("partynum"+partynum);
		return "redirect:/partyDetail?partynum=" + partynum;
	}
	//vo -> pvo 변경 0907
	@RequestMapping("/partyDetail")
	public String partyDetail(Model model,@RequestParam int partynum, @RequestParam Map<String, String> map) {
		PartyVO vo = partyDaoInter.partyDetail(partynum);
		model.addAttribute("pvo", vo);
		
		String cPage = map.get("cPage");
		//map.put("PARTY_PARTYNUM", String.valueOf(vo.getPartynum()));
		//System.out.println(cPage.getClass().getName()); //String
		
		CPageVO.setTotalRecord(partyDaoInter.getCTotal(map));
		int totalRecord = CPageVO.getTotalRecord();
		System.out.println("totalRecord : "+totalRecord);
		
		CPageVO.setTotalPage((int)Math.ceil(totalRecord / (double) CPageVO.getNumPerPage()));
		System.out.println("2. totalPage :" + CPageVO.getTotalPage());
		CPageVO.setTotalBlock((int) Math.ceil((double) CPageVO.getTotalPage() / CPageVO.getPagePerBlock()));
		System.out.println("3. TotalBlock : "+CPageVO.getTotalBlock());
		
		if (cPage != null) {
			CPageVO.setNowPage(Integer.parseInt(cPage));
		} else {
			CPageVO.setNowPage(1);
		}
		System.out.println("4. nowPage :" + CPageVO.getNowPage());
		CPageVO.setBeginPerPage((CPageVO.getNowPage() - 1) * CPageVO.getNumPerPage() + 1);
		CPageVO.setEndPerPage((CPageVO.getBeginPerPage() - 1) + CPageVO.getNumPerPage());
		System.out.println("5. beginPerPage = " + CPageVO.getBeginPerPage());
		System.out.println("5. endPerPage = " + CPageVO.getEndPerPage());
		
		Map<String, String> pamap = new HashMap<String, String>();
		pamap.put("begin", String.valueOf(CPageVO.getBeginPerPage()));
		pamap.put("end", String.valueOf(CPageVO.getEndPerPage()));
		
		pamap.putAll(map);
		System.out.println(map.get("partynum").getClass().getName());//String
		System.out.println("===========Map All============");
		for (Map.Entry<String, String> e : map.entrySet()) {
			System.out.println(e.getKey() + "," + e.getValue());
		}
		
		List<PartyCommVO> clist = partyDaoInter.pCommList(pamap);
		
		int startPage = (int) ((CPageVO.getNowPage() - 1) / CPageVO.getPagePerBlock()) * CPageVO.getPagePerBlock() + 1;

		int endPage = startPage + CPageVO.getPagePerBlock() - 1;

		if (endPage > CPageVO.getTotalPage()) {
			endPage = CPageVO.getTotalPage();
		}
		System.out.println("6. startPage = " + startPage);
		System.out.println("6. endPage = " + endPage);
		int Partynum = Integer.parseInt(map.get("partynum"));
		
		model.addAttribute("startPage", startPage);// 블록에 시작페이지값
		model.addAttribute("endPage", endPage);// 블록에 시작페이지값
		model.addAttribute("page", CPageVO); // nowPage,pagePerBlock,totalPage
		
		model.addAttribute("clist", clist);
		return "party/party";
	}
	
	@GetMapping("/partyDelete")
	public String partyDelete(Model model, int partynum, HttpSession session) {
		PartyVO vo = partyDaoInter.partyDetail(partynum);
		if (vo.getPmemnum().equals(session.getAttribute("sessionNO").toString())) {
			partyDaoInter.partyDelete(partynum);
			return "redirect:/partyList";
		} else {
			return "error/notnum";
		}
		
	}
	
	@GetMapping("/partyModify")
	public String partyModify(int partynum, Model model, HttpSession session) {
		PartyVO vo = partyDaoInter.partyDetail(partynum);
		if (vo.getPmemnum().equals(session.getAttribute("sessionNO").toString())) {
			model.addAttribute("vo", vo);
			return "/party/modify";
		} else {
			System.out.println(vo.getPmemnum());
			//System.out.println(vo.getPmemnum().getClass().getName()); String
			System.out.println(session.getAttribute("sessionNO"));
			//System.out.println(session.getAttribute("sessionNO").getClass().getName()); integer
			return "error/notnum";
		}
	}
	
	@PostMapping("/partyUpdate")
	public String partyUpdate(PartyVO vo,HttpServletRequest request) { 
		String img_path = "resources\\img\\fboard";
		
		String r_path = request.getSession().getServletContext().getRealPath("/");
		
		MultipartFile mf = vo.getMfile();
		String originalFN = mf.getOriginalFilename();
		
		// full 경로
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		path.append(originalFN);
		
		File f = new File(path.toString());
		
		try {
			mf.transferTo(f);
			vo.setPimgn(originalFN);
			// 이미지 이름을 db에 저장하기 위해서 vo 값에 재설정
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		System.out.println("업로드 파일 목록 ===========================");

		StringBuffer path2 = new StringBuffer();
		path2.append(r_path).append(img_path).append("\\");
		File f2 = new File(path2.toString());
		File[] flist = f2.listFiles(); // 모든 파일 이름을 리스트로 받아옥디

		System.out.println("업로드 파일 목록 ===========================");
		
		partyDaoInter.partyModify(vo);
		System.out.println(vo.getPartynum());
		return "redirect:/partyDetail?partynum="+vo.getPartynum();
	}
	
	@RequestMapping("/pCommInsert")
	public String pCommInsert(PartyCommVO cvo) {
		partyDaoInter.addPComm(cvo);
		return "redirect:/partyDetail?partynum="+cvo.getParty_partynum();
	}
	
	//댓글삭제부분0829
	@GetMapping("/pcdel")
	public String pcdel(int partynum, int pcnum) {
		System.out.println(partynum);
		System.out.println(pcnum);
		partyDaoInter.delPComm(pcnum);
		return "redirect:/partyDetail?partynum="+partynum;
	}
	//댓글수정 0907 ajax처리 완료
	@PostMapping("/pcModify")
	public String pcModify(@RequestBody PartyCommVO cvo) {
		System.out.println("컨트롤러 이동확인");
		String getparty = cvo.getParty_partynum();
		int partynum = Integer.parseInt(getparty);
		partyDaoInter.modifyComm(cvo);
		return "redirect:/partyDetail?partynum="+partynum;
	}
}
