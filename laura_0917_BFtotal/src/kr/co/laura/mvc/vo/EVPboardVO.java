package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class EVPboardVO {
	
	private int evpNum; //�⺻Ű
	private int evboardNum; //�ܷ�Ű
	private String evWriter; // �ۼ���: ȸ�� �г���   
	private String evId; // �ۼ��� : �̸���(id) �� ������ ���� ��. �г����� ������ �����ؼ� �̰ɷ� 
	private String evCont; //��� ���� (��ũ ��) 
	private String evStatus="n"; //��������  y: ���� / n: ������
	private String evWin="d"; //��÷����  default : d(�������ų�, ��÷ ��)  / y:��÷  / n: �̴�÷
	private String evPdate; //�̺�Ʈ ������ 
	
	
	public String getEvStatus() {
		return evStatus;
	}
	
	//  y or n�� �����ϰ� 
	public void setEvStatus(String evStatus) {
		//this.evStatus = evStatus;
		  if ("y".equals(evStatus) || "n".equals(evStatus)) {
	            this.evStatus = evStatus;
	        } else {
	            throw new IllegalArgumentException("y or n�� �Է��� ����");
	        }
	}
	
	
	public String getEvWin() {
		return evWin;
	}
	
//  y or n or d ��  �����ϰ� 
	public void setEvWin(String evWin) {
		//this.evWin = evWin;
		  if ("d".equals(evWin) || "y".equals(evWin) || "n".equals(evWin)) {
	            this.evWin = evWin;
	        } else {
	            throw new IllegalArgumentException("d or y or n�� �Է��̰���");
	        }
	}
	
	
	//���� �ڵ忡�� setEvStatus�� setWin �޼��忡�� ���� ��ȿ���� üũ�ϰ�, 
	//��ȿ���� ���� ���� ������ IllegalArgumentException�� ������ ������� 
	//��ȿ���� �˻��ϰ� �ֽ��ϴ�. �̷��� �ϸ� VO ��ü�� �����ϰų� �� �Ҵ� �� ��ȿ���� ���� ���� ������ �� �ֽ��ϴ�.

	//VO Ŭ�������� �ʿ��� ������, getter, setter �޼��� ���� �߰��Ͽ� ����Ͻø� �˴ϴ�. 
	//�̷��� ���� ����� ���� �̸� ���ǵ� ��ȿ�� ������ VO ��ü�� �Ҵ��ϵ��� �� �� �ֽ��ϴ�.

	
	
	public int getEvpNum() {
		return evpNum;
	}
	public String getEvCont() {
		return evCont;
	}

	public void setEvCont(String evCont) {
		this.evCont = evCont;
	}

	public String getEvId() {
		return evId;
	}

	public void setEvId(String evId) {
		this.evId = evId;
	}

	public String getEvWriter() {
		return evWriter;
	}

	public void setEvWriter(String evWriter) {
		this.evWriter = evWriter;
	}

	public void setEvpNum(int evpNum) {
		this.evpNum = evpNum;
	}
	public int getEvboardNum() {
		return evboardNum;
	}
	public void setEvboardNum(int evboardNum) {
		this.evboardNum = evboardNum;
	}

	public String getEvPdate() {
		return evPdate;
	}
	public void setEvPdate(String evPdate) {
		this.evPdate = evPdate;
	}
	
	
	

}
