package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.EVboardVO;
import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.NewsVO;
import kr.co.laura.mvc.vo.PartyVO;
import kr.co.laura.mvc.vo.TradeVO;

public interface TotalSearchDaoInter {

	/* 09.05 이성근 통합검색 기능 중 펀딩 파트만 구현 */
	// 통합검색에서 해당 키워드와 매치되는 갯수를 카운트 하여 출력하기 위해 생성.
	// Funding
	public int fundingSearchCount(Map<String, String> map);

	// 통합검색에서 펀딩 게시판의 값이 있는 FBoardVO를 fundingSearch에 담고 뽑아 쓰기 위해 생성
	public List<FBoardVO> fundingSearch(Map<String, String> map);

	/* 09.06 이성근 통합검색 기능 나머지 4개 구현 */
	// Party
	public int partySearchCount(Map<String, String> map);

	// 통합검색에서 펀딩 게시판의 값이 있는 PartyVO를 fundingSearch에 담고 뽑아 쓰기 위해 생성
	public List<PartyVO> partySearch(Map<String, String> map);

	// Trade
	public int tradeSearchCount(Map<String, String> map);

	// 통합검색에서 교환 게시판의 값이 있는 TradeVO를 tradeSearch에 담고 뽑아 쓰기 위해 생성
	public List<TradeVO> tradeSearch(Map<String, String> map);

	// News
	public int newsSearchCount(Map<String, String> map);

	// 통합검색에서 뉴스 게시판의 값이 있는 NewsVO를 newsSearch에 담고 뽑아 쓰기 위해 생성
	public List<NewsVO> newsSearch(Map<String, String> map);

	// Event
	public int eventSearchCount(Map<String, String> map);

	// 통합검색에서 이벤트 게시판의 값이 있는 EVboardVO를 eventSearch에 담고 뽑아 쓰기 위해 생성
	public List<EVboardVO> eventSearch(Map<String, String> map);

}
