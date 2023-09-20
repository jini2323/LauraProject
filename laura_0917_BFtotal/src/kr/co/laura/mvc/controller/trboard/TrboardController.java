package kr.co.laura.mvc.controller.trboard;

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
import org.springframework.web.servlet.ModelAndView;

import kr.co.laura.mvc.dao.TrBoardDaoInter;
import kr.co.laura.mvc.vo.PartyVO;
import kr.co.laura.mvc.vo.TrCommVO;
import kr.co.laura.mvc.vo.TrPageVO;
import kr.co.laura.mvc.vo.TradeVO;
import kr.co.laura.mvc.vo.TrcPageVO;

@Controller
public class TrboardController {

	private List<Map<String, String>> trcommList;

	public TrboardController() {
		trcommList = new ArrayList<Map<String, String>>();
	}

	@Autowired
	private TrBoardDaoInter trboardDaoInter;

	@Autowired
	private TrPageVO trpageVO;

	@Autowired
	private TrcPageVO trcpVO;

	// 0809 ������� ��
	@GetMapping("/trboardForm2")
	public String trboardForm() {
		return "trade/trboardForm2";
	}

	@RequestMapping("/trboardList")
	public String trboardList(Model model, @RequestParam Map<String, String> trParamMap) {

		String stype = trParamMap.get("searchType");
		String sname = trParamMap.get("searchValue");
		String trcPage = trParamMap.get("trPage");

		trpageVO.setTotalRecord(trboardDaoInter.gettrTotal(trParamMap));
		int trtotalrecord = trpageVO.getTotalRecord();

		trpageVO.setTotalPage((int) Math.ceil(trtotalrecord / (double) trpageVO.getNumPerPage()));

		trpageVO.setTotalBlock((int) Math.ceil((double) trpageVO.getTotalPage() / trpageVO.getPagePerBlock()));

		if (trcPage != null) {
			trpageVO.setNowPage(Integer.parseInt(trcPage));
		} else {
			trpageVO.setNowPage(1);
		}

		trpageVO.setBeginPerPage((trpageVO.getNowPage() - 1) * trpageVO.getNumPerPage() + 1);
		trpageVO.setEndPerPage((trpageVO.getBeginPerPage() - 1) + trpageVO.getNumPerPage());

		// ����¡ �׽�Ʈ
		Map<String, String> trmap = new HashMap<String, String>();
		trmap.put("trbegin", String.valueOf(trpageVO.getBeginPerPage()));
		trmap.put("trend", String.valueOf(trpageVO.getEndPerPage()));

		// map�� trParamMap ��ġ��
		trmap.putAll(trParamMap);

		// �� �������� Ȯ��
		for (Map.Entry<String, String> e : trmap.entrySet()) {
			System.out.println(e.getKey() + ":" + e.getValue());
		}

		List<TradeVO> tradeList = trboardDaoInter.listTrBoard(trmap);

		int trstartPage = (int) ((trpageVO.getNowPage() - 1) / trpageVO.getPagePerBlock()) * trpageVO.getPagePerBlock()
				+ 1;
		int trendPage = trstartPage + trpageVO.getPagePerBlock() - 1;

		if (trendPage > trpageVO.getTotalPage()) {
			trendPage = trpageVO.getTotalPage();
		}

		// �˻����� view�� ����

		model.addAttribute("searchType", trmap.get("searchType"));
		model.addAttribute("searchValue", trmap.get("searchValue"));

		model.addAttribute("trstartPage", trstartPage);// ��Ͽ� ������������
		model.addAttribute("trendPage", trendPage);// ��Ͽ� ������������
		model.addAttribute("trpage", trpageVO); // nowPage,pagePerBlock,totalPage
		model.addAttribute("trboardList", tradeList);

		return "trade/trboardList";
	}

	// �۾��� �Ϸ� redirect => trboardList
	@RequestMapping("/trinsert")
	public String uploadInsert(Model model, TradeVO trvo, HttpServletRequest request) {
		// trboard_img
		String img_path = "resources\\img\\trboard"; // ����(������) �̹��� ����! ������ ���� ����
		// ��Ŭ���� �󿡼� ������ ���
		//String r_path = request.getSession().getServletContext().getRealPath("/");
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// Ȯ��
		System.out.println("r_path:" + r_path);

		MultipartFile trmf = trvo.getTrfile();
		String originalFN = trmf.getOriginalFilename();
		System.out.println("ofn:" + originalFN);

		// full ���
		StringBuffer trpath = new StringBuffer();
		trpath.append(r_path).append(img_path).append("\\");
		trpath.append(originalFN);
		System.out.println("Fullpath:" + trpath);

		// �߻��� (�̹����� ������ ��� ) File ��ü�� ����
		File trf = new File(trpath.toString());

		try {
			trmf.transferTo(trf);
			trvo.setTrimgn(originalFN);

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
		trboardDaoInter.addTrBoard(trvo);
		// �׽�Ʈ
		System.out.println("����: " + trvo.getTrtitle());

		return "redirect:/trboardList";
	}

	@GetMapping("/trboardDetail")
	public String trboardDetail(Model model, @RequestParam int trnum, Map<String, String> trParamMap) {

		// ��� ����¡ ó��
		String trcPage = trParamMap.get("trPage");

		trcpVO.setTotalRecord(trboardDaoInter.getTotaltrComm(trParamMap));
		int trtotalrecord = trpageVO.getTotalRecord();

		trcpVO.setTotalPage((int) Math.ceil(trtotalrecord / (double) trpageVO.getNumPerPage()));
		trcpVO.setTotalBlock((int) Math.ceil((double) trpageVO.getTotalPage() / trpageVO.getPagePerBlock()));

		if (trcPage != null) {
			trcpVO.setNowPage(Integer.parseInt(trcPage));
		} else {
			trcpVO.setNowPage(1);
		}

		trcpVO.setBeginPerPage((trcpVO.getNowPage() - 1) * trcpVO.getNumPerPage() + 1);
		trcpVO.setEndPerPage((trcpVO.getBeginPerPage() - 1) + trcpVO.getNumPerPage());

		// ��� ����¡ ó��
		Map<String, String> trmap = new HashMap<String, String>();
		trmap.put("trcommbegin", String.valueOf(trcpVO.getBeginPerPage()));
		trmap.put("trcommend", String.valueOf(trcpVO.getEndPerPage()));

		// map�� trParamMap ��ġ��
		trmap.putAll(trParamMap);

		TradeVO trvo = trboardDaoInter.trboardDetail(trnum);
		model.addAttribute("trvo", trvo);
		List<TrCommVO> trclist = trboardDaoInter.trcommList(trnum);

		int trstartPage = (int) ((trcpVO.getNowPage() - 1) / trcpVO.getPagePerBlock()) * trcpVO.getPagePerBlock() + 1;
		int trendPage = trstartPage + trcpVO.getPagePerBlock() - 1;

		if (trendPage > trcpVO.getTotalPage()) {
			trendPage = trcpVO.getTotalPage();
		}

		model.addAttribute("trstartPage", trstartPage);
		model.addAttribute("trendPage", trendPage);
		model.addAttribute("trPage", trcpVO);
		model.addAttribute("trclist", trclist);
		System.out.println(trvo.getTrimgn());
		System.out.println(trvo.getTradenum());
		return "trade/trade";
	}



	// ����ۼ� - Model model, FCommVO cvo, FBoardVO vo
	@RequestMapping("/trcommInsert")
	public String trcommInsert(TrCommVO trcvo) {
		// System.out.println("Test2=>"+cvo.getFnum());
		trboardDaoInter.traddComm(trcvo);
		return "redirect:/trboardDetail?trnum=" + trcvo.getTrade_tradenum();
	}
	
	@GetMapping("/modify")
	public String tradeModify(int trnum, Model model, HttpSession session) {
		TradeVO vo = trboardDaoInter.trboardDetail(trnum);
		//vo.getTrmemnum() int   // session.getAttribute("sessionNO") integer
		if (vo.getTrmemnum() == (int)session.getAttribute("sessionNO")) {
			model.addAttribute("vo", vo);
			System.out.println(vo.getTrimgn());
			return "/trade/modify";
		} else {
			System.out.println(Integer.toString(vo.getTrmemnum()).getClass().getName());
			System.out.println(session.getAttribute("sessionNO").getClass().getName());
			return "error/notnum";
		}
	}
	
	@PostMapping("/tradeUpdate")
	public String tradeUpdate(TradeVO vo, HttpServletRequest request) {
		
		String img_path = "resources\\img\\trboard"; // ����(������) �̹��� ����! ������ ���� ����
		
		String r_path = request.getSession().getServletContext().getRealPath("/");
		MultipartFile trmf = vo.getTrfile();
		String originalFN = trmf.getOriginalFilename();
		StringBuffer trpath = new StringBuffer();
		trpath.append(r_path).append(img_path).append("\\");
		trpath.append(originalFN);
		File trf = new File(trpath.toString());

		try {
			trmf.transferTo(trf);
			vo.setTrimgn(originalFN);

			// �̹��� �̸��� db�� �����ϱ� ���ؼ� vo ���� �缳��
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("���ε� ���� ��� ===========================");

		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		File f2 = new File(path.toString());
		File[] flist = f2.listFiles(); // ��� ���� �̸��� ����Ʈ�� �޾ƿ���

		System.out.println("���ε� ���� ��� ===========================");

		trboardDaoInter.trboardModify(vo);
		System.out.println("����: " + vo.getTrtitle());
		System.out.println(vo.getTradenum());
		return "redirect:/trboardDetail?trnum="+vo.getTradenum();
	}
	
	@GetMapping("/remove")
	public String tradeDelete(Model model, int trnum, HttpSession session) {
		TradeVO vo = trboardDaoInter.trboardDetail(trnum);
		if (vo.getTrmemnum() == (int)session.getAttribute("sessionNO")) {
			trboardDaoInter.delTrComm(trnum);
			//System.out.println("Ȯ�ο�"+vo.getTradenum());
			trboardDaoInter.trboardDelete(trnum);
			return "redirect:/trboardList";
		} else {
			//ModelAndView mav = new ModelAndView();
			//mav.setViewName("error/paramException");
			//mav.addObject("emsg","�����̾����ϴ�");
			return "error/notnum";
		}
	}
	
	@GetMapping("/TrCdel")
	public String deleteTrC(int trnum) {
		
		return "redirect:/trboardDetail?trnum=";
	}
	
}
