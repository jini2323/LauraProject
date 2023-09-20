package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.MemVO;
import kr.co.laura.mvc.vo.Mem_logVO;

public interface MemDaoInter {

	public void join(MemVO vo); // 가입 메서드 ( insert)

	public int emailCheck(String email); // 가입시 아이디 중복체크

	public int nickCheck(String nickname); // 가입시 닉네임 중복체크

	public int telCheck(String tel); // 가입시 전화번호 중복체크

	public MemVO loginCheck(MemVO vo); // 로그인 할때 아이디랑 비번 체크

	public MemVO myPage(String email); // 마이페이지 가는 메소드

	public void myInfoEdit(MemVO vo); // 마이페이지 내 회원정보 수정

	public int pwdChk(MemVO vo); // 마이페이지 정보 수정을 위한 비밀번호 확인

	public void pwdEdit(MemVO vo); // 마이페이지 내 비밀번호 변경

	public void memDelete(MemVO vo); // 마이페이지 내 회원 탈퇴(0826_이성근 수정)

	public int getCnt(Map<String, String> map); // 총 회원멤버 수

	public List<MemVO> memList(Map<String, String> map); // 총 회원 목록

	// 로그인 기록 파트 //로그인 로깅
	public void addLoginLogging(Mem_logVO lvo);

	// ----------------------------------------------------------
	// 0819_박형지 : 예술인 인증부분 추가
	public void upartist(MemVO vo);
}
