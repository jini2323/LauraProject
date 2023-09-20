package kr.co.laura.mvc.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.laura.mvc.dao.VisitCountDAO;
import kr.co.laura.mvc.vo.VisitCountVO;

@Service("visitCountService")
public class VisitCountService {
	
	 	@Resource(name = "visitCountDAO")
		private VisitCountDAO visitCountDao;
	
		
	    public void insertVisitCount() {
	    	System.out.println("! ¼­ºñ½º");
	    	visitCountDao.insertVisitCount();
	    }

	    public void updateVisitCount() {
	    	visitCountDao.updateVisitCount();
	    }

	    public VisitCountVO selectVisitCount() {
	        return visitCountDao.selectVisitCount();
	    }

}
