/*
package kr.co.laura.mvc.Listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;


@WebListener
public class HttpSessionListener implements javax.servlet.http.HttpSessionListener {

	
	
	private static int todayVisitCount;

	public static int getTodayVisitCount() {
		return todayVisitCount;
	}

	public static void setTodayVisitCount(int todayVisitCount) {
		HttpSessionListener.todayVisitCount = todayVisitCount;
	}

	// 세션이 생성되는 시점에, 금일 날짜에 해당하는 접속 기록이 있으면 VisitCount를 1 증가시키고,
		// 없으면 VisitCount를 등록하는 로직이다.
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		System.out.println("리스너 세션 전 ");
		HttpSession session = se.getSession();
		System.out.println("리스너 세션 후 ");
		WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(session.getServletContext());
		VisitCountService visitCountService = ctx.getBean("visitCountService", VisitCountService.class);
		  System.out.printf("생성된 SESSIONID %s \n",  se.getSession().getId());
	       System.out.printf("로그인된 사용자 수 : %d \n", todayVisitCount);
		
		if (session.isNew()) {
			VisitCountVO visitCountVO = visitCountService.selectVisitCount();
			if (visitCountVO == null) {
				visitCountService.insertVisitCount();
				setTodayVisitCount(1);
			} else {
				visitCountService.updateVisitCount();
				setTodayVisitCount(visitCountVO.getvCount() + 1);
			}
		}

	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		 System.out.printf("생성된 SESSIONID %s \n",  se.getSession().getId());
	       System.out.printf("로그인된 사용자 수 : %d \n", todayVisitCount);
	}

} */
