package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.EVPboardVO;
import kr.co.laura.mvc.vo.EVboardVO;

public interface EVboardDaoInter {
	
		//���ۼ�
		public void addEVboard(EVboardVO vo);
		
		//��List Map<String, String> map
		public List<EVboardVO> listEVboard(Map<String, String> map);
		
		//��ȸ��
		public void upHit(int evNum);
		
		//����ȸ
		public EVboardVO evBoardDetail(int evNum);
		
		
		//����
		public void evBoardModify(EVboardVO vo);
		
		
		//����
		public void evBoardDel(int evNum);
		
		
		
		//����¡ó��
		public int getTotal(Map<String, String> map);
		
		

		//��� ��Ʈ 
		public void addEvpComm(EVPboardVO vo);
		
		//��List Map<String, String> map
		/*
		 * public List<EVPboardVO> listCommBoard(int evNum); //int evNum�� �θ����̺�(�ۼ��� ��
		 * ��ȣ�� �ǹ�)
		 */		
		public List<EVPboardVO> listCommBoard(Map<String, String> map); //int evNum�� �θ����̺�(�ۼ��� �� ��ȣ�� �ǹ�) 
		
		// ��� ����
		public void evCommDel(int evpNum);
		//��� ���� 
		public void evCommModify(EVPboardVO pvo);
		
		//��� ����¡ó��
		public int getCommTotal(Map<String, String> map);
		
		
		
}
