package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;

@Component
public class PointVO {

	private int pointnum;
	private int memnum;
	private String morp;
	private int point;
	private String content;
	private String pointdate;

	public int getPointnum() {
		return pointnum;
	}

	public void setPointnum(int pointnum) {
		this.pointnum = pointnum;
	}

	public int getMemnum() {
		return memnum;
	}

	public void setMemnum(int memnum) {
		this.memnum = memnum;
	}

	public String getMorp() {
		return morp;
	}

	public void setMorp(String morp) {
		this.morp = morp;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPointdate() {
		return pointdate;
	}

	public void setPointdate(String pointdate) {
		this.pointdate = pointdate;
	}

}
