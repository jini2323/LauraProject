package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.laura.mvc.vo.TrCommVO;
import kr.co.laura.mvc.vo.TradeVO;

@Repository
public class TrBoardDao implements TrBoardDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addTrBoard(TradeVO trvo) {
		ss.insert("trboard.tradd", trvo);

	}

	@Override
	public List<TradeVO> listTrBoard(Map<String, String> trmap) {
		return ss.selectList("trboard.trlist", trmap);
	}

	@Override
	public TradeVO trboardDetail(int trnum) {
		return ss.selectOne("trboard.trdetail", trnum);
	}

	@Override
	public void trboardModify(TradeVO trvo) {
		ss.update("trboard.trmodify", trvo);

	}

	@Override
	public void trboardDelete(int trnum) {
		ss.delete("trboard.trdelete", trnum);
	}

	@Override
	public void uptrHit(int trnum) {
		ss.update("trboard.hit", trnum);

	}

	@Override
	public void traddComm(TrCommVO trvo) {
		ss.insert("trboard.traddcomm", trvo);
	}

	@Override
	public List<TrCommVO> trcommList(int trnum) {
		return ss.selectList("trboard.trcommList", trnum);
	}

	@Override
	public int getTotaltrComm(Map<String, String> trmap) {
		return ss.selectOne("trboard.totaltrCommCount", trmap);
	}
	

	
	@Override
	public void delTrComm(int trnum) {
		ss.delete("trboard.trcdel", trnum);
	}

	// ∆‰¿Ã¬° √≥∏Æ
	@Override
	public int gettrTotal(Map<String, String> trmap) {
		return ss.selectOne("trboard.trtotalCount", trmap);
	}

}
