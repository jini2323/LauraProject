package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.laura.mvc.vo.EVboardVO;
import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.NewsVO;
import kr.co.laura.mvc.vo.PartyVO;
import kr.co.laura.mvc.vo.TradeVO;

@Repository
public class TotalSearchDao implements TotalSearchDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public int fundingSearchCount(Map<String, String> map) {
		return ss.selectOne("totalSearch.fundingSearchCount", map);
	}

	@Override
	public List<FBoardVO> fundingSearch(Map<String, String> map) {
		return ss.selectList("totalSearch.fundingSearchValue", map);
	}

	@Override
	public int partySearchCount(Map<String, String> map) {
		return ss.selectOne("totalSearch.partySearchCount", map);
	}

	@Override
	public List<PartyVO> partySearch(Map<String, String> map) {
		return ss.selectList("totalSearch.partySearchValue", map);

	}

	@Override
	public int tradeSearchCount(Map<String, String> map) {
		return ss.selectOne("totalSearch.tradeSearchCount", map);
	}

	@Override
	public List<TradeVO> tradeSearch(Map<String, String> map) {
		return ss.selectList("totalSearch.tradeSearchValue", map);
	}

	@Override
	public int newsSearchCount(Map<String, String> map) {
		return ss.selectOne("totalSearch.newsSearchCount", map);
	}

	@Override
	public List<NewsVO> newsSearch(Map<String, String> map) {
		return ss.selectList("totalSearch.newsSearchValue", map);
	}

	@Override
	public int eventSearchCount(Map<String, String> map) {
		return ss.selectOne("totalSearch.eventSearchCount", map);
	}

	@Override
	public List<EVboardVO> eventSearch(Map<String, String> map) {
		return ss.selectList("totalSearch.eventSearchValue", map);
	}

}
