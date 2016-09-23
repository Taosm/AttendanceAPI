package com.samuel.attendance.service;

import java.util.List;

import com.samuel.attendance.model.Staff;


public interface StaffBo {
	
	public int createStaff(Staff Staff) throws Exception;
	public boolean updateStaff(Staff Staff) throws Exception;
	public boolean deleteStaff(int bracnhID) throws Exception;
	public Staff selectStaff(int bracnhID) throws Exception;
	public List<Staff> selectAllStaffs() throws Exception;

}
