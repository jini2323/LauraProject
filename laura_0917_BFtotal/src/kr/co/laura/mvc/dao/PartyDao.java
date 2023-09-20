package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.laura.mvc.vo.PartyCommVO;
import kr.co.laura.mvc.vo.PartyVO;

@Repository
public class PartyDao implements PartyDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addParty(PartyVO vo) {
		ss.insert("party.add", vo);
	}

	@Override
	public List<PartyVO> partyList(Map<String, String> map) {
		return ss.selectList("party.partyList", map);
	}

	@Override
	public PartyVO partyDetail(int partynum) {
		return ss.selectOne("party.partyDetail", partynum);
	}

	@Override
	public void partyModify(PartyVO vo) {
		ss.update("party.modify", vo);
	}

	@Override
	public void partyDelete(int partynum) {
		ss.delete("party.partydelete", partynum);
	}

	@Override
	public void upHit(int partynum) {
		ss.update("party.uphit", partynum);
	}

	@Override
	public int getTotal(Map<String, String> map) {
		return ss.selectOne("party.totalCount", map);
	}

	@Override
	public void addPComm(PartyCommVO cvo) {
		ss.insert("party.addPComm", cvo);

	}

	@Override
	public List<PartyCommVO> pCommList(Map<String, String> map) {
		return ss.selectList("party.pcommList", map);
	}

	// 0908 댓글페이징처리
	@Override
	public int getCTotal(Map<String, String> map) {
		return ss.selectOne("party.commtotalCount", map);
	}

	@Override
	public void delPComm(int pcnum) {
		ss.delete("party.pcdel", pcnum);
	}

	// 파라미터변경 0907
	@Override
	public void modifyComm(PartyCommVO cvo) {
		ss.update("party.pcModify", cvo);

	}

}
