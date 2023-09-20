package kr.co.laura.mvc.vo;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FBoardVO {

	private int funnum; // �ݵ��� ��ȣ
	private int fupmemnum; // �ݵ� ���ε� ȸ�� ��ȣ
	private String funcategory; // �ݵ� ��ȭ ī�װ�
	private String funtitle; // �ݵ� ����
	private String funwriter; // �ݵ� ���ε� �ۼ���
	private String content; // �ݵ� ���� ����
	private String funpreview; // �ݵ� �̸�����
	private int targetprice; // ��ǥ�ݾ�
	private int cost; // �ݵ� �ݾ�(��Ϲڽ�)
	private String postimgn; // �ݵ� �������̹���
	private String sdate; // �ݵ� ������
	private String fdate; // �ݵ� ������
	private String contentimg; // �ݵ� ���� �̹���
	private String funvideo; // �ݵ� ��������
	private String actpic; // ��� �̹���
	private String funpurpose; // �ݵ� ����
	private String funbudget; // �ݵ� �����
	private String fupdate; // �ݵ��� �ۼ���

	private MultipartFile mfile;

	// 0902_������: �ݵ������κ� �߰�
	private List<FundingPartiVO> funparti;

	public int getFunnum() {
		return funnum;
	}

	public void setFunnum(int funnum) {
		this.funnum = funnum;
	}

	public int getFupmemnum() {
		return fupmemnum;
	}

	public void setFupmemnum(int fupmemnum) {
		this.fupmemnum = fupmemnum;
	}

	public String getFuncategory() {
		return funcategory;
	}

	public void setFuncategory(String funcategory) {
		this.funcategory = funcategory;
	}

	public String getFuntitle() {
		return funtitle;
	}

	public void setFuntitle(String funtitle) {
		this.funtitle = funtitle;
	}

	public String getFunwriter() {
		return funwriter;
	}

	public void setFunwriter(String funwriter) {
		this.funwriter = funwriter;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFunpreview() {
		return funpreview;
	}

	public void setFunpreview(String funpreview) {
		this.funpreview = funpreview;
	}

	public int getTargetprice() {
		return targetprice;
	}

	public void setTargetprice(int targetprice) {
		this.targetprice = targetprice;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public String getPostimgn() {
		return postimgn;
	}

	public void setPostimgn(String postimgn) {
		this.postimgn = postimgn;
	}

	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public String getFdate() {
		return fdate;
	}

	public void setFdate(String fdate) {
		this.fdate = fdate;
	}

	public String getContentimg() {
		return contentimg;
	}

	public void setContentimg(String contentimg) {
		this.contentimg = contentimg;
	}

	public String getFunvideo() {
		return funvideo;
	}

	public void setFunvideo(String funvideo) {
		this.funvideo = funvideo;
	}

	public String getActpic() {
		return actpic;
	}

	public void setActpic(String actpic) {
		this.actpic = actpic;
	}

	public String getFunpurpose() {
		return funpurpose;
	}

	public void setFunpurpose(String funpurpose) {
		this.funpurpose = funpurpose;
	}

	public String getFunbudget() {
		return funbudget;
	}

	public void setFunbudget(String funbudget) {
		this.funbudget = funbudget;
	}

	public String getFupdate() {
		return fupdate;
	}

	public void setFupdate(String fupdate) {
		this.fupdate = fupdate;
	}

	public MultipartFile getMfile() {
		return mfile;
	}

	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}

	public List<FundingPartiVO> getFunparti() {
		return funparti;
	}

	public void setFunparti(List<FundingPartiVO> funparti) {
		this.funparti = funparti;
	}

}
