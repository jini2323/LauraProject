package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class NewsVO {

	private int nnum; // 뉴스번호
	private String nwriter; // 기자이름
	private String ncompany; // 신문회사이름
	private String ntitle; // 기사제목
	private String ncontent; // 기사내용
	private String npreview; // 기사요약(미리보기)
	private String nimgn; // 기사사진 이름
	private String nvideon; // 영상파일 이름
	private int nhit; // 뉴스조회수
	private String ndate; // 업로드날짜

	private MultipartFile mfile;

	public int getNnum() {
		return nnum;
	}

	public void setNnum(int nnum) {
		this.nnum = nnum;
	}

	public String getNwriter() {
		return nwriter;
	}

	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
	}

	public String getNcompany() {
		return ncompany;
	}

	public void setNcompany(String ncompany) {
		this.ncompany = ncompany;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public String getNpreview() {
		return npreview;
	}

	public void setNpreview(String npreview) {
		this.npreview = npreview;
	}

	public String getNimgn() {
		return nimgn;
	}

	public void setNimgn(String nimgn) {
		this.nimgn = nimgn;
	}

	public String getNvideon() {
		return nvideon;
	}

	public void setNvideon(String nvideon) {
		this.nvideon = nvideon;
	}

	public int getNhit() {
		return nhit;
	}

	public void setNhit(int nhit) {
		this.nhit = nhit;
	}

	public String getNdate() {
		return ndate;
	}

	public void setNdate(String ndate) {
		this.ndate = ndate;
	}

	public MultipartFile getMfile() {
		return mfile;
	}

	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}

}
