package com.jxzl.user;

import java.io.Serializable;



// ʵ����
@SuppressWarnings("serial")
public class Student implements Serializable { // ���л��ӿڣ������ļ������л��ͷ����л���
	private int sid;
	private String password;
	private String sname;
	private String ssex;
	private String major;
	private String syear;
	private String sphone;

	public Student() {

	}

	public Student(int sid, String password, String sname, String ssex,
			String major, String syear, String sphone) { // �вι��췽��
		super();
		this.sid = sid;
		this.password = password;
		this.sname = sname;
		this.ssex = ssex;
		this.major = major;
		this.syear = syear;
		this.sphone = sphone;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSsex() {
		return ssex;
	}

	public void setSsex(String ssex) {
		this.ssex = ssex;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getSyear() {
		return syear;
	}

	public void setSyear(String syear) {
		this.syear = syear;
	}

	public String getSphone() {
		return sphone;
	}

	public void setSphone(String sphone) {
		this.sphone = sphone;
	}

}
