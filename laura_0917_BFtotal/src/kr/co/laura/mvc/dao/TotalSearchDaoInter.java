package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.EVboardVO;
import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.NewsVO;
import kr.co.laura.mvc.vo.PartyVO;
import kr.co.laura.mvc.vo.TradeVO;

public interface TotalSearchDaoInter {

	/* 09.05 �̼��� ���հ˻� ��� �� �ݵ� ��Ʈ�� ���� */
	// ���հ˻����� �ش� Ű����� ��ġ�Ǵ� ������ ī��Ʈ �Ͽ� ����ϱ� ���� ����.
	// Funding
	public int fundingSearchCount(Map<String, String> map);

	// ���հ˻����� �ݵ� �Խ����� ���� �ִ� FBoardVO�� fundingSearch�� ��� �̾� ���� ���� ����
	public List<FBoardVO> fundingSearch(Map<String, String> map);

	/* 09.06 �̼��� ���հ˻� ��� ������ 4�� ���� */
	// Party
	public int partySearchCount(Map<String, String> map);

	// ���հ˻����� �ݵ� �Խ����� ���� �ִ� PartyVO�� fundingSearch�� ��� �̾� ���� ���� ����
	public List<PartyVO> partySearch(Map<String, String> map);

	// Trade
	public int tradeSearchCount(Map<String, String> map);

	// ���հ˻����� ��ȯ �Խ����� ���� �ִ� TradeVO�� tradeSearch�� ��� �̾� ���� ���� ����
	public List<TradeVO> tradeSearch(Map<String, String> map);

	// News
	public int newsSearchCount(Map<String, String> map);

	// ���հ˻����� ���� �Խ����� ���� �ִ� NewsVO�� newsSearch�� ��� �̾� ���� ���� ����
	public List<NewsVO> newsSearch(Map<String, String> map);

	// Event
	public int eventSearchCount(Map<String, String> map);

	// ���հ˻����� �̺�Ʈ �Խ����� ���� �ִ� EVboardVO�� eventSearch�� ��� �̾� ���� ���� ����
	public List<EVboardVO> eventSearch(Map<String, String> map);

}
