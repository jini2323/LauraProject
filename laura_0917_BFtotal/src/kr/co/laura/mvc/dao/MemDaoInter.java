package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.MemVO;
import kr.co.laura.mvc.vo.Mem_logVO;

public interface MemDaoInter {

	public void join(MemVO vo); // ���� �޼��� ( insert)

	public int emailCheck(String email); // ���Խ� ���̵� �ߺ�üũ

	public int nickCheck(String nickname); // ���Խ� �г��� �ߺ�üũ

	public int telCheck(String tel); // ���Խ� ��ȭ��ȣ �ߺ�üũ

	public MemVO loginCheck(MemVO vo); // �α��� �Ҷ� ���̵�� ��� üũ

	public MemVO myPage(String email); // ���������� ���� �޼ҵ�

	public void myInfoEdit(MemVO vo); // ���������� �� ȸ������ ����

	public int pwdChk(MemVO vo); // ���������� ���� ������ ���� ��й�ȣ Ȯ��

	public void pwdEdit(MemVO vo); // ���������� �� ��й�ȣ ����

	public void memDelete(MemVO vo); // ���������� �� ȸ�� Ż��(0826_�̼��� ����)

	public int getCnt(Map<String, String> map); // �� ȸ����� ��

	public List<MemVO> memList(Map<String, String> map); // �� ȸ�� ���

	// �α��� ��� ��Ʈ //�α��� �α�
	public void addLoginLogging(Mem_logVO lvo);

	// ----------------------------------------------------------
	// 0819_������ : ������ �����κ� �߰�
	public void upartist(MemVO vo);
}
