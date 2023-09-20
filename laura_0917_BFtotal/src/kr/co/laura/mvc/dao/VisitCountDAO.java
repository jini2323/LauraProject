package kr.co.laura.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.laura.mvc.vo.VisitCountVO;

@Repository("visitCountDAO")
public class VisitCountDAO {

	@Autowired
	private SqlSessionTemplate ss;

	public void insertVisitCount() {
		System.out.println("dao insert");
		ss.insert("visitCount.insertVisitCount");
	}

	public void updateVisitCount() {
		System.out.println("dao update");
		ss.update("visitCount.updateVisitCount");
	}

	public VisitCountVO selectVisitCount() {
		System.out.println("dao select");
		return ss.selectOne("visitCount.selectVisitCount");
	}

}
