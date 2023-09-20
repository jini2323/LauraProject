package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class TradeVO {

	private int tradenum;// �۹�ȣ
	private int trmemnum;// �ۼ��� ȸ����ȣ
	private String trwriter;// �ۼ���
	private String trtitle;// ����
	private String trimgn;// �̹����̸�
	private int trhit;// ��ȸ��
	private int trprice;// �ݾ�
	private String trcontent;// ����
	private String trloc;// ����
	private String trupdate;// ���ε���

	private MultipartFile trfile;

	public int getTradenum() {
		return tradenum;
	}

	public void setTradenum(int tradenum) {
		this.tradenum = tradenum;
	}

	public int getTrmemnum() {
		return trmemnum;
	}

	public void setTrmemnum(int trmemnum) {
		this.trmemnum = trmemnum;
	}

	public String getTrwriter() {
		return trwriter;
	}

	public void setTrwriter(String trwriter) {
		this.trwriter = trwriter;
	}

	public String getTrtitle() {
		return trtitle;
	}

	public void setTrtitle(String trtitle) {
		this.trtitle = trtitle;
	}

	public String getTrimgn() {
		return trimgn;
	}

	public void setTrimgn(String trimgn) {
		this.trimgn = trimgn;
	}

	public int getTrhit() {
		return trhit;
	}

	public void setTrhit(int trhit) {
		this.trhit = trhit;
	}

	public int getTrprice() {
		return trprice;
	}

	public void setTrprice(int trprice) {
		this.trprice = trprice;
	}

	public String getTrcontent() {
		return trcontent;
	}

	public void setTrcontent(String trcontent) {
		this.trcontent = trcontent;
	}

	public String getTrloc() {
		return trloc;
	}

	public void setTrloc(String trloc) {
		this.trloc = trloc;
	}

	public String getTrupdate() {
		return trupdate;
	}

	public void setTrupdate(String trupdate) {
		this.trupdate = trupdate;
	}

	public MultipartFile getTrfile() {
		return trfile;
	}

	public void setTrfile(MultipartFile trfile) {
		this.trfile = trfile;
	}

}
