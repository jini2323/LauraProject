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
		// System.out.println("methodName:" + methodName);
		// null�� ����ǹ����� ������ �������� �Ⱥ��̴� ����

		// step2) JoinPoint�κ��� Ÿ�� ��ü�� �޼����� ���� ���� �޾ƿ���
		Object[] fd = jp.getArgs(); // ���� ����Ʈ�� �迭�� �ޱ� ��������Ʈ ����
		// �Ķ���Ͱ� ���� ������ �������� object�� �޴´�. ���ڰ� ��������, �������� �ִ�.

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

			HttpSession session = (HttpSession) fd[0]; // Args���� �ش� ������ �����´�.
			// �迭�� �ε��� 1��°, �� Ÿ���� �޼��� ���� �� �ι�°�� HttpServletRequest �� ���� �����Ǹ� ����
			String uid = (String) session.getAttribute("sessionID");
			// String reip1 = (String) session.getAttribute("sessionReip");
			String reip2 = ((HttpServletRequest) fd[1]).getRemoteAddr();
			userAgent = (String) fd[3];

			System.out.println("uid=>" + uid);
			System.out.println("reip1 ������ ���=>" + reip2);
			System.out.println("userAgent=>" + userAgent);
			System.out.println("===============");

			if (uid != null) {
				System.out.println("�α��� ��ó�� ����");
				// ��ó���� ����� �α�
				// �α��� ������ �����ͺ��̽��� �����ϱ�
				// ��ó���� ����� �α�
				// �α��� ������ �����ͺ��̽��� �����ϱ� //lvo.setIdn(dto.getId()); dto �޴°� �Ұ� �׷��� ���
				MemLoginLog lvo = new MemLoginLog();
				lvo.setIdn(uid);
				lvo.setStatus("login");
				lvo.setReip(reip2); //DB�� ����Ȱ� ���� ��¥ �����Ҷ��� ip�� �����´� (httprequest request)
				lvo.setUagent(userAgent); // reip1=> ���� �Ѱ�
				
				//���̺� Ʋ���� ���� �� �ۼ�   //�α��� ��ô�� �ȴ�.
				memberList.addLoginLogging(lvo);
			} else {
				System.out.println("�α��� ��ó�� ���� ���� !");
			}

		} else if (methodName.equals("loginfoutProcess")) { // �α׾ƿ�
			// ��ó���� ����� �α�
			System.out.println("�α׾ƿ� ��ó�� �α��۾�");
			HttpSession session = (HttpSession) fd[0]; // �迭�� �ε��� 1��°, �� Ÿ���� �޼��� ���� �� �ι�°�� HttpServletRequest �� ���� �����Ǹ�
			String uid = (String) session.getAttribute("sessionID");											// ����
			String reip2 = ((HttpServletRequest) fd[1]).getRemoteAddr();
			// String reip1 = (String) session.getAttribute("sessionReip");

			System.out.println("uid =>" + uid);
			System.out.println("�����Ǹ� ��� =>" + reip2);
			System.out.println("userAgent ��� =>" + userAgent);
			System.out.println("===============");

			MemLoginLog lvo = new MemLoginLog();
			lvo.setIdn(uid);
			lvo.setReip(reip2);
			lvo.setStatus("logout");
			lvo.setUagent(userAgent);
			System.out.println("userAgent2:"+userAgent);
			//���̺� Ʋ���� ���� �� �ۼ�   //�α��� ��ô�� �ȴ�.
			memberList.addLoginLogging(lvo);  //=> �α��� �Ŀ� MYLOGINLOG ���̺� ������ �߰� �ƴ��� �׽�Ʈ 
			

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
