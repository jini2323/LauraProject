package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.laura.mvc.vo.MemVO;
import kr.co.laura.mvc.vo.Mem_logVO;

@Repository
public class MemDao implements MemDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void join(MemVO vo) {
		System.out.println("join dao ����");
		System.out.println("email:" + vo.getEmail());
		ss.insert("mem.join", vo);
	}

	@Override
	public int emailCheck(String email) {
		return ss.selectOne("mem.emailcheck", email);
	}

	@Override
	public int nickCheck(String nickname) {
		return ss.selectOne("mem.nickcheck", nickname);
	}

	@Override
	public int telCheck(String tel) {
		return ss.selectOne("mem.telcheck", tel);
	}

	@Override
	public MemVO loginCheck(MemVO vo) {
		return ss.selectOne("mem.loginchk", vo);
	}

	@Override
	public MemVO myPage(String email) {
		System.out.println("mypage dao ����");
		System.out.println("�̸��� : " + email);
		return ss.selectOne("mem.mypage", email);
	}

	// ������������
	@Override
	public void myInfoEdit(MemVO vo) {
		System.out.println("ȸ������ ����");
		ss.update("mem.myinfoedit", vo);
	}

	@Override
	public int pwdChk(MemVO vo) {
		System.out.println("��й�ȣ üũ");
		return ss.selectOne("mem.pwdchk", vo);
	}

	/* 0825 �ڿ��� ���� */
	@Override
	public void pwdEdit(MemVO vo) {
		System.out.println("��й�ȣ ����!");
		// System.out.println(vo.getPwd());
		ss.update("mem.pwdedit", vo);
	}

	// 0826_�̼��� ����
	@Override
	public void memDelete(MemVO vo) {
		System.out.println("ȸ������ Ż��");
		System.out.println(vo.getEmail());
		System.out.println(vo.getPwd());
		ss.delete("mem.memDelete", vo);
	}

	/*
	 * @Override //���� public int getTotal(Map<String, String> map) { return
	 * ss.selectOne("upboard.totalCount",map); }
	 */

	@Override
	public int getCnt(Map<String, String> map) {
		return ss.selectOne("mem.totalCount", map);
	}

	@Override
	public List<MemVO> memList(Map<String, String> map) {
		return ss.selectList("mem.list", map);
	}

	@Override
	public void addLoginLogging(Mem_logVO lvo) {
		ss.insert("mem.logger_in", lvo);
	}

	@Override
	public void upartist(MemVO vo) {
		ss.update("mem.upartist", vo);
	}

}
