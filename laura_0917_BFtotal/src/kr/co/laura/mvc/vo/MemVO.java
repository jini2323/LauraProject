package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class MemVO {

	private int num; // 기본키
	private String email; // 아이디
	private String pwd; // 비번
	private String name; // 실명
	private String nickname; // 닉네임
	private String tel; // 전화번호
	private String memgender; // 성별
	private String birthday; // 생년월일
	private String profilepic; // 프로필 이미지 파일 이름
	private String mdate; // 가입일
	private String grade; // 등급
	private String arstatus; // 인증상태
	private String addr; // 주소
	private String bankaccount; // 계좌번호
	private String arprofilepic; // 감독프로필사진 파일이름
	private String arprofile; // 이력
	private String ardate; // 인증일
	private int mempoint; // 포인트

	private MultipartFile prfile; // 기본 프로필 업로드
	private MultipartFile arprfile; // 감독 프로필 업로드

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMemgender() {
		return memgender;
	}

	public void setMemgender(String memgender) {
		this.memgender = memgender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getProfilepic() {
		return profilepic;
	}

	public void setProfilepic(String profilepic) {
		this.profilepic = profilepic;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getArstatus() {
		return arstatus;
	}

	public void setArstatus(String arstatus) {
		this.arstatus = arstatus;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getBankaccount() {
		return bankaccount;
	}

	public void setBankaccount(String bankaccount) {
		this.bankaccount = bankaccount;
	}

	public String getArprofilepic() {
		return arprofilepic;
	}

	public void setArprofilepic(String arprofilepic) {
		this.arprofilepic = arprofilepic;
	}

	public String getArprofile() {
		return arprofile;
	}

	public void setArprofile(String arprofile) {
		this.arprofile = arprofile;
	}

	public String getArdate() {
		return ardate;
	}

	public void setArdate(String ardate) {
		this.ardate = ardate;
	}

	public int getMempoint() {
		return mempoint;
	}

	public void setMempoint(int mempoint) {
		this.mempoint = mempoint;
	}

	public MultipartFile getPrfile() {
		return prfile;
	}

	public void setPrfile(MultipartFile prfile) {
		this.prfile = prfile;
	}

	public MultipartFile getArprfile() {
		return arprfile;
	}

	public void setArprfile(MultipartFile arprfile) {
		this.arprfile = arprfile;
	}

}
