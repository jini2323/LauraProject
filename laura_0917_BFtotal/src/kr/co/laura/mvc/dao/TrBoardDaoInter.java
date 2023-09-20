package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.TrCommVO;
import kr.co.laura.mvc.vo.TradeVO;

public interface TrBoardDaoInter {

	// �� �ۼ�
	public void addTrBoard(TradeVO trvo);

	// ��ȯ�� list
	public List<TradeVO> listTrBoard(Map<String, String> trmap);

	// ��ȸ��
	public void uptrHit(int trnum);

	// ��ȯ�� �󼼺���
	public TradeVO trboardDetail(int trnum);

	// ����
	public void trboardModify(TradeVO trvo);

	// ����
	public void trboardDelete(int trnum);

	//////////////////////// ��� �κ� ////////////////////////////

	// ��� �ۼ�
	public void traddComm(TrCommVO trvo);

	// ��� ���
	public List<TrCommVO> trcommList(int trnum);

	// �������¡ ���
	public int getTotaltrComm(Map<String, String> trmap);
	
	// ��ۻ���
	public void delTrComm(int trnum);
	
	// ����¡ ó��
	public int gettrTotal(Map<String, String> trmap);
}
