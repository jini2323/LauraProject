package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.FundingPartiVO;

public interface FBoardDaoInter {

	// ���ۼ�
	public void addFBoard(FBoardVO vo);

	// ��List
	public List<FBoardVO> listFBoard(Map<String, String> map);

	// ����ȸ
	public FBoardVO fboardDetail(int funnum);

	// ����
	public void fboardModify(int funnum);

	// ����
	public void fboardDelete(FBoardVO vo);

	// ����¡ó��
	public int getTotal(Map<String, String> map);

	// 0711_ũ���� �ݵ� ���� �߰�
	public void addFCoin(FundingPartiVO vo);

	public FundingPartiVO funCheck(FundingPartiVO fpvo);

	public FundingPartiVO chkFcoin(int funnum_num);
	
	// 0826_������ : �ݵ����� Ȯ��
	public int chkfunstatus(FundingPartiVO fpvo);

}
