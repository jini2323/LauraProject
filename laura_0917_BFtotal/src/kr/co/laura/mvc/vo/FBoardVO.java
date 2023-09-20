package kr.co.laura.mvc.vo;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FBoardVO {

	private int funnum; // 펀딩글 번호
	private int fupmemnum; // 펀딩 업로드 회원 번호
	private String funcategory; // 펀딩 영화 카테고리
	private String funtitle; // 펀딩 제목
	private String funwriter; // 펀딩 업로드 작성자
	private String content; // 펀딩 본문 내용
	private String funpreview; // 펀딩 미리보기
	private int targetprice; // 목표금액
	private int cost; // 펀딩 금액(목록박스)
	private String postimgn; // 펀딩 포스터이미지
	private String sdate; // 펀딩 시작일
	private String fdate; // 펀딩 종료일
	private String contentimg; // 펀딩 내용 이미지
	private String funvideo; // 펀딩 비디오파일
	private String actpic; // 배우 이미지
	private String funpurpose; // 펀딩 목적
	private String funbudget; // 펀딩 예산안
	private String fupdate; // 펀딩글 작성일

	private MultipartFile mfile;

	// 0902_박형지: 펀딩참여부분 추가
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
