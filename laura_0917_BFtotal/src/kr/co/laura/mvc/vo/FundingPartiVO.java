package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class FundingPartiVO {
	private int fmem_num;
	private int funnum_num;
	private int funmoney;
	private String funstatus;
	private String joindate;

	public int getFmem_num() {
		return fmem_num;
	}

	public void setFmem_num(int fmem_num) {
		this.fmem_num = fmem_num;
	}

	public int getFunnum_num() {
		return funnum_num;
	}

	public void setFunnum_num(int funnum_num) {
		this.funnum_num = funnum_num;
	}

	public int getFunmoney() {
		return funmoney;
	}

	public void setFunmoney(int funmoney) {
		this.funmoney = funmoney;
	}

	public String getFunstatus() {
		return funstatus;
	}

	public void setFunstatus(String funstatus) {
		this.funstatus = funstatus;
	}

	public String getJoindate() {
		return joindate;
	}

	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}

}
