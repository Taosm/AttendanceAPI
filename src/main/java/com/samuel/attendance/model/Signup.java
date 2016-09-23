package com.samuel.attendance.model;

import java.util.Date;


import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
public class Signup {
	private long id;
	private long staffId;
	private Date signupTime;
	
	
	public Signup() {

	}

	public Signup(long id, long staffId, Date signupTime) {
		this.id = id;
		this.staffId = staffId;
		this.signupTime = signupTime;
	}

	public Signup(long id, long staffId) {
		this.id = id;
		this.staffId = staffId;
		this.signupTime = new Date();
	}


	public Signup(long staffId) {
		this.staffId=staffId;
	}

	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public long getStaffId() {
		return staffId;
	}


	public void setStaffId(long staffId) {
		this.staffId = staffId;
	}


	public Date getSignupTime() {
		return signupTime;
	}


	public void setSignupTime(Date signupTime) {
		this.signupTime = signupTime;
	}
	
}
