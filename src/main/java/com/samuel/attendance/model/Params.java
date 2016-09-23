package com.samuel.attendance.model;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
@Entity
public class Params {
	@Id
	private int id;
	private String startTime;   //format 17:30
	private String offTime; // format 8:20
	private int lateTime;    // in minute
	private int earlyLeaveTime; // in minute 
	private double absenceTime;  // in minute 
	
	public Params() {

	}

	public Params(int id, String startTime, String offTime, int lateTime, int earlyLeaveTime, int absenceTime) {
		this.id = id;
		this.startTime = startTime;
		this.offTime = offTime;
		this.lateTime = lateTime;
		this.earlyLeaveTime = earlyLeaveTime;
		this.absenceTime = absenceTime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getOffTime() {
		return offTime;
	}

	public void setOffTime(String offTime) {
		this.offTime = offTime;
	}

	public int getLateTime() {
		return lateTime;
	}

	public void setLateTime(int lateTime) {
		this.lateTime = lateTime;
	}

	public int getEarlyLeaveTime() {
		return earlyLeaveTime;
	}

	public void setEarlyLeaveTime(int earlyLeaveTime) {
		this.earlyLeaveTime = earlyLeaveTime;
	}

	public double getAbsenceTime() {
		return absenceTime;
	}

	public void setAbsenceTime(double absenceTime) {
		this.absenceTime = absenceTime;
	}
	

}
