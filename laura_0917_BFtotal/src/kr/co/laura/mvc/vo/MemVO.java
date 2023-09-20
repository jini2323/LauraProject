package kr.co.laura.mvc.vo;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class MemVO {

	private int num; // �⺻Ű
	private String email; // ���̵�
	private String pwd; // ���
	private String name; // �Ǹ�
	private String nickname; // �г���
	private String tel; // ��ȭ��ȣ
	private String memgender; // ����
	private String birthday; // �������
	private String profilepic; // ������ �̹��� ���� �̸�
	private String mdate; // ������
	private String grade; // ���
	private String arstatus; // ��������
	private String addr; // �ּ�
	private String bankaccount; // ���¹�ȣ
	private String arprofilepic; // ���������ʻ��� �����̸�
	private String arprofile; // �̷�
	private String ardate; // ������
	private int mempoint; // ����Ʈ

	private MultipartFile prfile; // �⺻ ������ ���ε�
	private MultipartFile arprfile; // ���� ������ ���ε�

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
