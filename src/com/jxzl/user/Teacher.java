package com.jxzl.user;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Teacher implements Serializable { // ���л��ӿڣ������ļ������л��ͷ����л���
	private int tid;
	private String password;
	private String tname;
	private String tsex;
	private String post;
	private String dept;
	private String tphone;
	
	public Teacher(){   //�޲ι���
		
	}

	public Teacher(int tid, String password, String tname, String tsex,
			String post, String dept, String tphone) {               //�вι���
		super();
		this.tid = tid;
		this.password = password;
		this.tname = tname;
		this.tsex = tsex;
		this.post = post;
		this.dept = dept;
		this.tphone = tphone;
	}		
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTsex() {
		return tsex;
	}
	public void setTsex(String tsex) {
		this.tsex = tsex;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getTphone() {
		return tphone;
	}
	public void setTphone(String tphone) {
		this.tphone = tphone;
	}
	}