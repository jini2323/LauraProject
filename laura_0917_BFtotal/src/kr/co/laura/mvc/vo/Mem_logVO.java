package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class Mem_logVO {
	
	
	/*
	 * int num; //�⺻Ű int laura_num; //�ܷ�Ű String reip; String uagent; private
	 * String status; //�α��� ���� private String sstime, eetime; //�α��� �ð���
	 * 
	 */
	
	private int num; //�⺻Ű
	private String laura_memnum; //�ܷ�Ű   LAURA_MEMNUM 
	private String reip,uagent;
	private String sstime, eetime; //�α��� �ð���
	private String status; //�α��� ����
	
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	public String getLaura_memnum() {
		return laura_memnum;
	}
	public void setLaura_memnum(String laura_memnum) {
		this.laura_memnum = laura_memnum;
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
	public String getSstime() {
		return sstime;
	}
	public void setSstime(String sstime) {
		this.sstime = sstime;
	}
	public String getEetime() {
		return eetime;
	}
	public void setEetime(String eetime) {
		this.eetime = eetime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	

}
