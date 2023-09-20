package kr.co.laura.mvc.controller.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.laura.mvc.dao.TotalSearchDaoInter;
import kr.co.laura.mvc.service.VisitCountService;
import kr.co.laura.mvc.service.VisitService;
//import kr.co.laura.mvc.service.VisitService;
import kr.co.laura.mvc.vo.EVboardVO;
import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.NewsVO;
import kr.co.laura.mvc.vo.PartyVO;
import kr.co.laura.mvc.vo.TradeVO;

@Controller
public class MainController {

	@Autowired
	private TotalSearchDaoInter totalSearchDaoInter;
	
	@Autowired
	private VisitService visitService;
	
	@Autowired
	private VisitCountService visitCountService;

	
	@RequestMapping(value = { "/", "/main" }, method = RequestMethod.GET) // �̰� ��û
	public String mainPage(Model model) {
		//�� �湮�ڼ� ++ -
		visitService.addVisit();
		
		
		return "main/index";
	}

	@RequestMapping("/searchList")
	public String searchList(Model model, @RequestParam Map<String, String> paramMap) {

		String sname = paramMap.get("searchValue");
		// String sortingVal = paramMap.get("sortingVal");

		Map<String, String> map = new HashMap<String, String>();
		map.putAll(paramMap);

		/* ���հ˻� ����� ����ϰ� ���� �Խ��� �߰� �� �Ʒ��� ���� �������� �ϳ��� �߰� */
		List<FBoardVO> fundingsearch = totalSearchDaoInter.fundingSearch(map);
		List<PartyVO> partysearch = totalSearchDaoInter.partySearch(map);
		List<TradeVO> tradesearch = totalSearchDaoInter.tradeSearch(map);
		List<NewsVO> newssearch = totalSearchDaoInter.newsSearch(map);
		List<EVboardVO> eventsearch = totalSearchDaoInter.eventSearch(map);

		if (fundingsearch == null) {
			System.out.println("�˻������ �����ϴ�.");
		}

		model.addAttribute("searchValue", map.get("searchValue"));

		int fundingSearchCount = totalSearchDaoInter.fundingSearchCount(map);
		model.addAttribute("fundingSearchCount", fundingSearchCount);
		if (fundingSearchCount == 0) {
			model.addAttribute("message1", "�˻� ����� �����ϴ�.");
		} else {
			model.addAttribute("fundingsearch", fundingsearch);
		}

		int partySearchCount = totalSearchDaoInter.partySearchCount(map);
		model.addAttribute("partySearchCount", partySearchCount);
		if (partySearchCount == 0) {
			model.addAttribute("message2", "�˻� ����� �����ϴ�.");
		} else {
			model.addAttribute("partysearch", partysearch);
		}

		int tradeSearchCount = totalSearchDaoInter.tradeSearchCount(map);
		model.addAttribute("tradeSearchCount", tradeSearchCount);
		if (tradeSearchCount == 0) {
			model.addAttribute("message3", "�˻� ����� �����ϴ�.");
		} else {
			model.addAttribute("tradesearch", tradesearch);
		}

		int newsSearchCount = totalSearchDaoInter.newsSearchCount(map);
		model.addAttribute("newsSearchCount", newsSearchCount);
		if (newsSearchCount == 0) {
			model.addAttribute("message4", "�˻� ����� �����ϴ�.");
		} else {
			model.addAttribute("newssearch", newssearch);
		}

		int eventSearchCount = totalSearchDaoInter.eventSearchCount(map);
		model.addAttribute("eventSearchCount", eventSearchCount);
		if (eventSearchCount == 0) {
			model.addAttribute("message5", "�˻� ����� �����ϴ�.");
		} else {
			model.addAttribute("eventsearch", eventsearch);
		}

		System.out.println(map.get("searchValue"));

		return "main/totalSearch";
	}
}
