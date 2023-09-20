package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.FundingPartiVO;

public interface FBoardDaoInter {

	// 글작성
	public void addFBoard(FBoardVO vo);

	// 글List
	public List<FBoardVO> listFBoard(Map<String, String> map);

	// 상세조회
	public FBoardVO fboardDetail(int funnum);

	// 수정
	public void fboardModify(int funnum);

	// 삭제
	public void fboardDelete(FBoardVO vo);

	// 페이징처리
	public int getTotal(Map<String, String> map);

	// 0711_크라우드 펀딩 참여 추가
	public void addFCoin(FundingPartiVO vo);

	public FundingPartiVO funCheck(FundingPartiVO fpvo);

	public FundingPartiVO chkFcoin(int funnum_num);
	
	// 0826_박형지 : 펀딩여부 확인
	public int chkfunstatus(FundingPartiVO fpvo);

}
