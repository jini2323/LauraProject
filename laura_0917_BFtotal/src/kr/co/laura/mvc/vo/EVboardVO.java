package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Component
public class EVboardVO {
	
	//private static String evWriter = "ADMIN";   //디폴트 :"ADMIN" //외래키(비활성화) 관리자 나중에  : 관리자 계정의 이름
	private int evNum;  //기본키
	private String evTitle;  
	private String evContent;  
	private String reward;  
	private String evImg;  
	private String evVeo;    //영상 파일 이름
	private int evHit;
	private String evSdate;  //이벤트 시작일
	private String evFdate;  //이벤트 종료일 
	private String evWdate;  //이벤트 게시글 작성일 
	
	private MultipartFile evfile;
	private MultipartFile evfile2;
	
	
	
	public MultipartFile getEvfile2() {
		return evfile2;
	}

	public void setEvfile2(MultipartFile evfile2) {
		this.evfile2 = evfile2;
	}

	public EVboardVO() {
	}

	public int getEvNum() {
		return evNum;
	}

	public void setEvNum(int evNum) {
		this.evNum = evNum;
	}

	public String getEvTitle() {
		return evTitle;
	}

	public void setEvTitle(String evTitle) {
		this.evTitle = evTitle;
	}

	public String getEvContent() {
		return evContent;
	}

	public void setEvContent(String evContent) {
		this.evContent = evContent;
	}

	public String getReward() {
		return reward;
	}

	public void setReward(String reward) {
		this.reward = reward;
	}

	public String getEvImg() {
		return evImg;
	}

	public void setEvImg(String evImg) {
		this.evImg = evImg;
	}

	public String getEvVeo() {
		return evVeo;
	}

	public void setEvVeo(String evVeo) {
		this.evVeo = evVeo;
	}

	public int getEvHit() {
		return evHit;
	}

	public void setEvHit(int evHit) {
		this.evHit = evHit;
	}

	public String getEvSdate() {
		return evSdate;
	}

	public void setEvSdate(String evSdate) {
		this.evSdate = evSdate;
	}

	public String getEvFdate() {
		return evFdate;
	}

	public void setEvFdate(String evFdate) {
		this.evFdate = evFdate;
	}

	public String getEvWdate() {
		return evWdate;
	}

	public void setEvWdate(String evWdate) {
		this.evWdate = evWdate;
	}

	public MultipartFile getEvfile() {
		return evfile;
	}

	public void setEvfile(MultipartFile evfile) {
		this.evfile = evfile;
	}
	

	

}
