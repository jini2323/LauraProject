package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class VisitVO {
	
	    private int Countnum; // �湮�� �� ī��Ʈ

	    private String visitDate; //�湮��¥ 

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
