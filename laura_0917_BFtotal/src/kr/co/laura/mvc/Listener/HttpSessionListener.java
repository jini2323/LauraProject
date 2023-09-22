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

	// ������ �����Ǵ� ������, ���� ��¥�� �ش��ϴ� ���� ����� ������ VisitCount�� 1 ������Ű��,
		// ������ VisitCount�� ����ϴ� �����̴�.
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		System.out.println("������ ���� �� ");
		HttpSession session = se.getSession();
		System.out.println("������ ���� �� ");
		WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(session.getServletContext());
		VisitCountService visitCountService = ctx.getBean("visitCountService", VisitCountService.class);
		  System.out.printf("������ SESSIONID %s \n",  se.getSession().getId());
	       System.out.printf("�α��ε� ����� �� : %d \n", todayVisitCount);
		
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
		 System.out.printf("������ SESSIONID %s \n",  se.getSession().getId());
	       System.out.printf("�α��ε� ����� �� : %d \n", todayVisitCount);
	}

} */
