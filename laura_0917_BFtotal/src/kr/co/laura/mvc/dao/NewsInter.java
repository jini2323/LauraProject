package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.NewsVO;

public interface NewsInter {

	// 뉴스 작성
	public void addNews(NewsVO nvo);

	// 뉴스 목록
	public List<NewsVO> listNews(Map<String, String> map);

	// 조회수
	public void upHit(int nnum);

	// 뉴스 상세보기
	public NewsVO newsDetail(int nnum);

	// 뉴스 수정
	public void newsModify(int nnum);

	// 뉴스 삭제
	public void newsDelete(NewsVO nvo);

	// 페이징처리
	public int getTotal(Map<String, String> map);
}
