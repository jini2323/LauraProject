package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class MemLoginLog {
	
	private int lognum; //�⺻Ű
	private String idn; //�ܷ�Ű ��� ���̺��� �̸���
 	private String reip,uagent;
	private String logintime; //�α��� �ð���  logtime
	private String status; //�α��� ����
	public int getLognum() {
		return lognum;
	}
	public void setLognum(int lognum) {
		this.lognum = lognum;
	}
	public String getIdn() {
		return idn;
	}
	public void setIdn(String idn) {
		this.idn = idn;
	}
	public String getReip() {
		return reip;
	}
	public void setReip(String reip) {
		this.reip = reip;
	}
	public String getUagent() {
		return uagent;
	}
	public void setUagent(String uagent) {
		this.uagent = uagent;
	}
	public String getLogintime() {
		return logintime;
	}
	public void setLogintime(String logintime) {
		this.logintime = logintime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
}
