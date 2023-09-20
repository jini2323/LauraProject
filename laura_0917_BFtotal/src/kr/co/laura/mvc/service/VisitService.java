package kr.co.laura.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.laura.mvc.dao.VisitDAO;

@Service
public class VisitService {
	
	@Autowired
	private VisitDAO visitDao;
	
	
	public void addVisit() {
	    visitDao.addVisit();
	}

}
