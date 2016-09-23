package com.samuel.attendance.dao;

import java.util.List;

import com.samuel.attendance.model.Attendance;

public interface AttendanceDao {

	public List<Attendance> getStaffCurrent(int staffId ,int month);
	
	public List<Attendance> getAllOdds(int year, int month);
	
}
