package kr.co.laura.mvc.dao;

import java.util.List;

import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.FundingPartiVO;

public interface MypageDaoInter {

	public List<FBoardVO> fplist(int fmem_num);
}
