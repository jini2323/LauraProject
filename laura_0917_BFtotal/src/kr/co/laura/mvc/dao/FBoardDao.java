package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.FundingPartiVO;

@Repository
public class FBoardDao implements FBoardDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	// ÆäÀÌÂ¡Ã³¸®
	@Override
	public int getTotal(Map<String, String> map) {
		return ss.selectOne("fboard.totalCount", map);
	}

	@Override
	public void addFBoard(FBoardVO vo) {
		ss.insert("fboard.add", vo);
	}

	@Override
	public List<FBoardVO> listFBoard(Map<String, String> map) {
		return ss.selectList("fboard.list", map);
	}

	@Override
	public FBoardVO fboardDetail(int funnum) {
		return ss.selectOne("fboard.detail", funnum);
	}

	@Override
	public void fboardModify(int funnum) {
		ss.update("fboard.modify", funnum);
	}

	@Override
	public void fboardDelete(FBoardVO vo) {
		ss.delete("fboard.delete", vo);
	}

	// 0711_ÆÝµùÂü¿©
	@Override
	public void addFCoin(FundingPartiVO fvo) {
		ss.insert("fboard.addFCoin", fvo);

	}

	@Override
	public FundingPartiVO funCheck(FundingPartiVO fpvo) {
		return ss.selectOne("fboard.fpcoinChk", fpvo);
	}

	@Override
	public FundingPartiVO chkFcoin(int funnum_num) {
		return ss.selectOne("fboard.chkFcoin", funnum_num);
	}

	@Override
	public int chkfunstatus(FundingPartiVO fpvo) {
		return ss.selectOne("fboard.chkfunstatus", fpvo);
	}

}
