package kr.co.laura.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class VisitDAO {
	
	@Autowired
	private SqlSessionTemplate ss;

	public void addVisit() {
	    //�Ϻ��� �湮 1��°�� �� insert
	    if(ss.selectOne("visit.todayVisitCheck") == null){
	        ss.insert("visit.todayFirstVisit");
	    }
	    //�״����� update
	    else ss.update("visit.todayAddVisit");
	}

}
