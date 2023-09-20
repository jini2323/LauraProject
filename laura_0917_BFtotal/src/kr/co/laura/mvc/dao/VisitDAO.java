package kr.co.laura.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class VisitDAO {
	
	@Autowired
	private SqlSessionTemplate ss;

	public void addVisit() {
	    //일별로 방문 1번째일 때 insert
	    if(ss.selectOne("visit.todayVisitCheck") == null){
	        ss.insert("visit.todayFirstVisit");
	    }
	    //그다음은 update
	    else ss.update("visit.todayAddVisit");
	}

}
