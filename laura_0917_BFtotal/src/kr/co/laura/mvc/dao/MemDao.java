package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.laura.mvc.vo.MemLoginLog;
import kr.co.laura.mvc.vo.MemVO;

@Repository
public class MemDao implements MemDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void join(MemVO vo) {
		System.out.println("join dao 실행");
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
		System.out.println("mypage dao 실행");
		System.out.println("이메일 : " + email);
		return ss.selectOne("mem.mypage", email);
	}

	// 개인정보수정
	@Override
	public void myInfoEdit(MemVO vo) {
		System.out.println("회원정보 수정");
		ss.update("mem.myinfoedit", vo);
	}

	@Override
	public int pwdChk(MemVO vo) {
		System.out.println("비밀번호 체크");
		return ss.selectOne("mem.pwdchk", vo);
	}

	/* 0825 박원빈 수정 */
	@Override
	public void pwdEdit(MemVO vo) {
		System.out.println("비밀번호 변경!");
		// System.out.println(vo.getPwd());
		ss.update("mem.pwdedit", vo);
	}

	// 0826_이성근 수정
	@Override
	public void memDelete(MemVO vo) {
		System.out.println("회원정보 탈퇴");
		System.out.println(vo.getEmail());
		System.out.println(vo.getPwd());
		ss.delete("mem.memDelete", vo);
	}

	/*
	 * @Override //수정 public int getTotal(Map<String, String> map) { return
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

	//로그인 기록처리 
	@Override
	public void addLoginLogging(MemLoginLog lvo) {
		ss.insert("mem.logger_in", lvo);
	}
	
	
	
	
	
	//예술인 인증 폼 작성시 프로필 업데이트
	@Override
	public void upartist(MemVO vo) {
		ss.update("mem.upartist", vo);
	}

}
