package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class PartyVO {

	private int partynum;//��Ƽ�����۹�ȣ
	private String pmemnum;//�ۼ��� ȸ����ȣ
	private String pwriter;//���������ä����� ���Ӥ����Ĥ��Ӥ�
	private String partytitle;//����
	private String partycontent;//����
	private String pimgn;//�̹����̸�
	private int phit;//��ȸ��
	private String partyloc;//����
	private String partydate;//��Ƽ������
	private String pupdate;//���ε峯¥
	
	private MultipartFile mfile;

	public int getPartynum() {
		return partynum;
	}

	public void setPartynum(int partynum) {
		this.partynum = partynum;
	}

	public String getPmemnum() {
		return pmemnum;
	}

	public void setPmemnum(String pmemnum) {
		this.pmemnum = pmemnum;
	}

	public String getPwriter() {
		return pwriter;
	}

	public void setPwriter(String pwriter) {
		this.pwriter = pwriter;
	}

	public String getPartytitle() {
		return partytitle;
	}

	public void setPartytitle(String partytitle) {
		this.partytitle = partytitle;
	}

	public String getPartycontent() {
		return partycontent;
	}

	public void setPartycontent(String partycontent) {
		this.partycontent = partycontent;
	}

	public String getPimgn() {
		return pimgn;
	}

	public void setPimgn(String pimgn) {
		this.pimgn = pimgn;
	}

	public int getPhit() {
		return phit;
	}

	public void setPhit(int phit) {
		this.phit = phit;
	}

	public String getPartyloc() {
		return partyloc;
	}

	public void setPartyloc(String partyloc) {
		this.partyloc = partyloc;
	}

	public String getPartydate() {
		return partydate;
	}

	public void setPartydate(String partydate) {
		this.partydate = partydate;
	}

	public String getPupdate() {
		return pupdate;
	}

	public void setPupdate(String pupdate) {
		this.pupdate = pupdate;
	}

	public MultipartFile getMfile() {
		return mfile;
	}

	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}

	
	
	
	
}
