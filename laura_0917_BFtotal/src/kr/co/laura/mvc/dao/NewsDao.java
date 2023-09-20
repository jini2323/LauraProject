package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.laura.mvc.vo.NewsVO;

@Repository
public class NewsDao implements NewsInter {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addNews(NewsVO nvo) {
		ss.insert("news.add", nvo);
	}

	@Override
	public List<NewsVO> listNews(Map<String, String> map) {
		return ss.selectList("news.list", map);
	}

	@Override
	public void upHit(int nnum) {
		ss.update("news.hit", nnum);
	}

	@Override
	public NewsVO newsDetail(int nnum) {
		return ss.selectOne("news.detail", nnum);
	}

	@Override
	public void newsModify(int nnum) {
		// TODO Auto-generated method stub

	}

	@Override
	public void newsDelete(NewsVO nvo) {
		// TODO Auto-generated method stub

	}

	@Override
	public int getTotal(Map<String, String> map) {
		return ss.selectOne("news.totalCount", map);
	}

}
