package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class EVPboardVO {
	
	private int evpNum; //기본키
	private int evboardNum; //외래키
	private String evWriter; // 작성자: 회원 닉네임   
	private String evId; // 작성자 : 이메일(id) 글 구분을 위한 열. 닉네임은 변경이 가능해서 이걸로 
	private String evCont; //댓글 내용 (링크 등) 
	private String evStatus="n"; //참여여부  y: 참여 / n: 미참여
	private String evWin="d"; //당첨여부  default : d(미참여거나, 추첨 전)  / y:당첨  / n: 미당첨
	private String evPdate; //이벤트 참여일 
	
	
	public String getEvStatus() {
		return evStatus;
	}
	
	//  y or n만 가능하게 
	public void setEvStatus(String evStatus) {
		//this.evStatus = evStatus;
		  if ("y".equals(evStatus) || "n".equals(evStatus)) {
	            this.evStatus = evStatus;
	        } else {
	            throw new IllegalArgumentException("y or n만 입력이 가능");
	        }
	}
	
	
	public String getEvWin() {
		return evWin;
	}
	
//  y or n or d 만  가능하게 
	public void setEvWin(String evWin) {
		//this.evWin = evWin;
		  if ("d".equals(evWin) || "y".equals(evWin) || "n".equals(evWin)) {
	            this.evWin = evWin;
	        } else {
	            throw new IllegalArgumentException("d or y or n만 입력이가능");
	        }
	}
	
	
	//위의 코드에서 setEvStatus와 setWin 메서드에서 값이 유효한지 체크하고, 
	//유효하지 않은 값이 들어오면 IllegalArgumentException을 던지는 방식으로 
	//유효성을 검사하고 있습니다. 이렇게 하면 VO 객체를 생성하거나 값 할당 시 유효하지 않은 값을 방지할 수 있습니다.

	//VO 클래스에는 필요한 생성자, getter, setter 메서드 등을 추가하여 사용하시면 됩니다. 
	//이러한 접근 방식을 통해 미리 정의된 유효한 값만을 VO 객체에 할당하도록 할 수 있습니다.

	
	
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
