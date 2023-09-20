package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class VisitCountVO {
	
	private String regDate;

    private int vCount;
    
	/*
	 * private int totalCount;
	 * 
	 * public int getTotalCount() { return totalCount; } public void
	 * setTotalCount(int totalCount) { this.totalCount = totalCount; }
	 */
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getvCount() {
		return vCount;
	}

	public void setvCount(int vCount) {
		this.vCount = vCount;
	}

	@Override
	public String toString() {
		 return 
				 "VisitCountVO{" +
         "regDate='" + regDate + '\'' +
         ", visitCount=" + vCount +
        // "totalCount='"+ totalCount+
         '}';
		}	
	
    
    
	
	
	

}
