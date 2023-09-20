package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.PartyCommVO;
import kr.co.laura.mvc.vo.PartyVO;

public interface PartyDaoInter {

	//생성
	public void addParty(PartyVO vo);
	//출력
	public List<PartyVO> partyList(Map<String, String> map);
	//상세
	public PartyVO partyDetail(int partynum);
	//수정
	public void partyModify(PartyVO vo);
	//삭제
	public void partyDelete(int partynum);
	//조회수
	public void upHit(int partynum);
	//페이징처리
	public int getTotal(Map<String, String> map);

	//댓글
	public void addPComm(PartyCommVO cvo);
	
	public List<PartyCommVO> pCommList(Map<String, String> map);
	//댓글 페이징처리 파라미터타입 변경
	public int getCTotal(Map<String, String> map);
	
	public void delPComm(int pcnum);
	
	// 파라미터값변경 0907
	public void modifyComm(PartyCommVO cvo);
	
}
