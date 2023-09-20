package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.PartyCommVO;
import kr.co.laura.mvc.vo.PartyVO;

public interface PartyDaoInter {

	//����
	public void addParty(PartyVO vo);
	//���
	public List<PartyVO> partyList(Map<String, String> map);
	//��
	public PartyVO partyDetail(int partynum);
	//����
	public void partyModify(PartyVO vo);
	//����
	public void partyDelete(int partynum);
	//��ȸ��
	public void upHit(int partynum);
	//����¡ó��
	public int getTotal(Map<String, String> map);

	//���
	public void addPComm(PartyCommVO cvo);
	
	public List<PartyCommVO> pCommList(Map<String, String> map);
	//��� ����¡ó�� �Ķ����Ÿ�� ����
	public int getCTotal(Map<String, String> map);
	
	public void delPComm(int pcnum);
	
	// �Ķ���Ͱ����� 0907
	public void modifyComm(PartyCommVO cvo);
	
}
