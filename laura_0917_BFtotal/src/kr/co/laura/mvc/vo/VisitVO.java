package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class VisitVO {
	
	    private int Countnum; // 방문자 수 카운트

	    private String visitDate; //방문날짜 

		public int getCountnum() {
			return Countnum;
		}

		public void setCountnum(int countnum) {
			Countnum = countnum;
		}

		public String getVisitDate() {
			return visitDate;
		}

		public void setVisitDate(String visitDate) {
			this.visitDate = visitDate;
		}
	    
	    


}
