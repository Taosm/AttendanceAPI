package com.samuel.attendance.service;

import java.util.List;

import com.samuel.attendance.model.Attendance;

public interface AttendanceBo {
	
	public List<Attendance> getStaffCurrent(int staffId ,int month);
	
	public List<Attendance> getAllOdds(int year, int month);

}
