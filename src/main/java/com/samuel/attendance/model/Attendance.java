package com.samuel.attendance.model;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;


@Entity
@XmlRootElement
public class Attendance {	
	@Id	
	private int id;
	private int staffId;
	private String name;
	private Timestamp firstTime;
	private Timestamp lastTime;
	private Time workTime;
	private String late;
	private String earlyLeave;
	private String absence;
	private int day;
	private int month;
	private int dayOfWeek;
	private int year;
	

	public Attendance(int staffId, String name, Timestamp firstTime, int day, int month, int dayOfWeek, int year) {
		this.staffId = staffId;
		this.name = name;
		this.firstTime = firstTime;
		this.day = day;
		this.month = month;
		this.dayOfWeek = dayOfWeek;
		this.year = year;
	}
	
	


	public Attendance(int staffId, String name, int day, int month, int dayOfWeek, int year) {
		this.staffId = staffId;
		this.name = name;
		this.day = day;
		this.month = month;
		this.dayOfWeek = dayOfWeek;
		this.year = year;
	}




	public Attendance() {

	}


	public Attendance(int id, int staffId, String name, Timestamp firstTime, Timestamp lastTime, Time workTime, String late,
			String earlyLeave, String absence, int day, int month, int dayOfWeek, int year) {
		this.id = id;
		this.staffId = staffId;
		this.name = name;
		this.firstTime = firstTime;
		this.lastTime = lastTime;
		this.workTime = workTime;
		this.late = late;
		this.earlyLeave = earlyLeave;
		this.absence = absence;
		this.day = day;
		this.month = month;
		this.dayOfWeek = dayOfWeek;
		this.year = year;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getStaffId() {
		return staffId;
	}


	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Timestamp getFirstTime() {
		return firstTime;
	}


	public void setFirstTime(Timestamp firstTime) {
		this.firstTime = firstTime;
	}


	public Timestamp getLastTime() {
		return lastTime;
	}


	public void setLastTime(Timestamp lastTime) {
		this.lastTime = lastTime;
	}


	public Time getWorkTime() {
		return workTime;
	}


	public void setWorkTime(Time workTime) {
		this.workTime = workTime;
	}


	public String getLate() {
		return late;
	}


	public void setLate(String late) {
		this.late = late;
	}


	public String getEarlyLeave() {
		return earlyLeave;
	}


	public void setEarlyLeave(String earlyLeave) {
		this.earlyLeave = earlyLeave;
	}


	public String getAbsence() {
		return absence;
	}


	public void setAbsence(String string) {
		this.absence = string;
	}


	public int getDay() {
		return day;
	}


	public void setDay(int day) {
		this.day = day;
	}


	public int getMonth() {
		return month;
	}


	public void setMonth(int month) {
		this.month = month;
	}


	public int getDayOfWeek() {
		return dayOfWeek;
	}


	public void setDayOfWeek(int dayOfWeek) {
		this.dayOfWeek = dayOfWeek;
	}


	public int getYear() {
		return year;
	}


	public void setYear(int year) {
		this.year = year;
	}
	
	
	/*
	public void addOffAttendance(Timestamp firstTime){
		
		
		
		this.setLastTime(lastTime);// add last record time
		
		this.workTime = lastTime-firstTime;
		this.late = late;
		this.earlyLeave = earlyLeave;
		this.absence = absence;
		
	}
	
	*/
	
	
}
