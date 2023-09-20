package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class TrCommVO {

	private int tcnum;
	private int trade_tradenum;
	private String tcwriter;
	private String tcomm;
	private String tcdate;

	public int getTcnum() {
		return tcnum;
	}

	public void setTcnum(int tcnum) {
		this.tcnum = tcnum;
	}

	public int getTrade_tradenum() {
		return trade_tradenum;
	}

	public void setTrade_tradenum(int trade_tradenum) {
		this.trade_tradenum = trade_tradenum;
	}

	public String getTcwriter() {
		return tcwriter;
	}

	public void setTcwriter(String tcwriter) {
		this.tcwriter = tcwriter;
	}

	public String getTcomm() {
		return tcomm;
	}

	public void setTcomm(String tcomm) {
		this.tcomm = tcomm;
	}

	public String getTcdate() {
		return tcdate;
	}

	public void setTcdate(String tcdate) {
		this.tcdate = tcdate;
	}

}
