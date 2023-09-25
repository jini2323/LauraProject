package kr.co.laura.mvc.advice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import kr.co.laura.mvc.dao.MemDaoInter;
import kr.co.laura.mvc.vo.MemLoginLog;

@Component
@Aspect
public class LoginAdvice {
	
	@Autowired
	private MemDaoInter memberList;
	
	private String userAgent;
	
	

	// Arouond Advice�� ����ϴ� ���� ������ ����!
	@Around("execution(* kr.co.laura.mvc.controller.member.LoginCheckController.loginf*(..))")
	public ModelAndView loginLogger(ProceedingJoinPoint jp) {
		
		ModelAndView rpath = null; // ��ó�� ��
		
		// step1) �޼����� �̸��� �����ͼ� �α��ΰ� �α׾ƿ��� �����Ѵ�.
		String methodName = jp.getSignature().getName(); // ��������Ʈ�� ���� ��� ��
		System.out.println("methodName:" + methodName);
		// null�� ����ǹ����� ������ �������� �Ⱥ��̴� ����

		// step2) JoinPoint�κ��� Ÿ�� ��ü�� �޼����� ���� ���� �޾ƿ���
		Object[] fd = jp.getArgs(); // ���� ����Ʈ�� �迭�� �ޱ� ��������Ʈ ����
		// �Ķ���Ͱ� ���� ������ �������� object�� �޴´�. ���ڰ� ��������, �������� �ִ�.
		System.out.println("jp�� ũ��1: "+fd.length);
		
		
		for(Object e: fd) {
		System.out.println("LoginAdvice Ȯ�� : "+e.getClass().getName());
		}

		// login, logout �����ϱ�
		if (methodName.equals("loginfProcess")) {

			try {
				// �α��� �޼��带 ȣ���ϰ� ��ȯ�Ǵ� ModelAndView �� �����ϴ�
				rpath = (ModelAndView) jp.proceed();

			} catch (Throwable e) {
				e.printStackTrace();
			}
			System.out.println("�α��� ��ó�� �α��۾�");

			// Args���� �ش� ������ �����´�.
			HttpSession session = (HttpSession) fd[0]; 
			// �迭�� �ε��� 1��°, �� Ÿ���� �޼��� ���� �� �ι�°�� HttpServletRequest �� ���� �����Ǹ� ����
			HttpServletRequest request = (HttpServletRequest) fd[1];
			String uid = (String) session.getAttribute("sessionID");
			userAgent = (String) fd[3];
			
			//String reip1 = ((HttpServletRequest) fd[1]).getRemoteAddr();
			
			System.out.println("uid => " + uid);
			System.out.println("������ ��� �׽�Ʈ => " + request.getRemoteAddr());
			System.out.println("userAgent �׽�Ʈ => " + userAgent);
			System.out.println("============================================");


			if (uid != null) {
				System.out.println("�α��� ��ó�� ����");
				// ��ó���� ����� �α�
				// �α��� ������ �����ͺ��̽��� �����ϱ�
				// ��ó���� ����� �α�
				// �α��� ������ �����ͺ��̽��� �����ϱ� //lvo.setIdn(dto.getId()); dto �޴°� �Ұ� �׷��� ���
				MemLoginLog lvo = new MemLoginLog();
				lvo.setIdn(uid);
				lvo.setStatus("login");
				lvo.setReip(request.getRemoteAddr());
				 //DB�� ����Ȱ� ���� ��¥ �����Ҷ��� ip�� �����´� (httprequest request)
				lvo.setUagent(userAgent); // reip1=> ���� �Ѱ�
				//���̺� Ʋ���� ���� �� �ۼ�   //�α��� ��ô�� �ȴ�.
				memberList.addLoginLogging(lvo);
			} else {
				System.out.println("�α��� ��ó�� ���� ���� !");
			}

		} else if (methodName.equals("loginfoutProcess")) { // �α׾ƿ�
			// ��ó���� ����� �α�
			System.out.println("jp�� ũ��2: "+fd.length);
			System.out.println("�α׾ƿ� ��ó�� �α��۾�");
			
			HttpSession session = (HttpSession) fd[0];
			HttpServletRequest request = (HttpServletRequest) fd[1];
			String uid = (String) session.getAttribute("sessionID");											// ����
			// userAgent = (String) fd[3]
			
			System.out.println("uid => " + uid);
			System.out.println("������ ��� �׽�Ʈ =>" + request.getRemoteAddr());
			System.out.println("userAgent �׽�Ʈ =>" + userAgent);
			System.out.println("============================================");

			MemLoginLog lvo = new MemLoginLog();
			lvo.setIdn(uid);
			lvo.setStatus("logout");
			lvo.setReip(request.getRemoteAddr());
			lvo.setUagent(userAgent);
			memberList.addLoginLogging(lvo);
			

			try {
				// �α׾ƿ� �޼��带 ȣ���ϰ� ��ȯ�Ǵ� Modeland view
				rpath = (ModelAndView) jp.proceed(); 

			} catch (Throwable e) {
				e.printStackTrace();
			}
		}

		return rpath;

	}

}
