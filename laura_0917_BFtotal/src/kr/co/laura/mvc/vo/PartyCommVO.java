package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class PartyCommVO {
	//PARTY_PNUM,PCNAME,PCCOMM,PCDATE
	private int pcnum; //��۹�ȣ
	private String party_partynum;  //�Խñ۹�ȣ fk
	private String pcwriter; //����ۼ���
	private String pcomm;  //��۳���
	private String pcdate;  //����ۼ���
	public int getPcnum() {
		return pcnum;
	}
	public void setPcnum(int pcnum) {
		this.pcnum = pcnum;
	}
	public String getParty_partynum() {
		return party_partynum;
	}
	public void setParty_partynum(String party_partynum) {
		this.party_partynum = party_partynum;
	}
	public String getPcwriter() {
		return pcwriter;
	}
	public void setPcwriter(String pcwriter) {
		this.pcwriter = pcwriter;
	}
	public String getPcomm() {
		return pcomm;
	}
	public void setPcomm(String pcomm) {
		this.pcomm = pcomm;
	}
	public String getPcdate() {
		return pcdate;
	}
	public void setPcdate(String pcdate) {
		this.pcdate = pcdate;
	}
	
	
}
