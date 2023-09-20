package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.EVPboardVO;
import kr.co.laura.mvc.vo.EVboardVO;

public interface EVboardDaoInter {
	
		//글작성
		public void addEVboard(EVboardVO vo);
		
		//글List Map<String, String> map
		public List<EVboardVO> listEVboard(Map<String, String> map);
		
		//조회수
		public void upHit(int evNum);
		
		//상세조회
		public EVboardVO evBoardDetail(int evNum);
		
		
		//수정
		public void evBoardModify(EVboardVO vo);
		
		
		//삭제
		public void evBoardDel(int evNum);
		
		
		
		//페이징처리
		public int getTotal(Map<String, String> map);
		
		

		//댓글 파트 
		public void addEvpComm(EVPboardVO vo);
		
		//글List Map<String, String> map
		/*
		 * public List<EVPboardVO> listCommBoard(int evNum); //int evNum은 부모테이블(작성글 의
		 * 번호를 의미)
		 */		
		public List<EVPboardVO> listCommBoard(Map<String, String> map); //int evNum은 부모테이블(작성글 의 번호를 의미) 
		
		// 댓글 삭제
		public void evCommDel(int evpNum);
		//댓글 수정 
		public void evCommModify(EVPboardVO pvo);
		
		//댓글 페이징처리
		public int getCommTotal(Map<String, String> map);
		
		
		
}
