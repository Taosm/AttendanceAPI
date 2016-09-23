package com.samuel.attendance.dao;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.samuel.attendance.model.Attendance;


@Repository
public class AttendanceDaoImpl implements AttendanceDao {
	
	List<Attendance> list = new ArrayList<>();
	
	@Autowired
	private HibernateTemplate ht;


	@SuppressWarnings("unchecked")
	@Override
	public List<Attendance> getStaffCurrent(int satffId,int month) {
								
		List<?> list =ht.find("FROM Attendance WHERE staffId=? AND MONTH=?", satffId,month);
		
		return (List<Attendance>) list;			
		
	}
	
	/**
	 * Below cases defined as  "Odd" or "异常" records----this will be impl in Dao layer
	 * super > a staff have not attendace record 
	 * a> staff is late for some minute(int) late-Y ()
	 * b> staff is earlyLeave fro some minute(int) earlyLeave-Y
	 * c> staff's workTime less than required hour (double) earlyLeave double
	 * d> staff only have one record in a day from Mon~Fri
	 * e> staff have no recored  in a day from Mon~Fri
	 * -------------------------------------------------
	 * use stored procedure is much easier
	 * 
	 * 1-- we create an attendance recored at 00:00:00 with only staffId, day,dayOfweek, year
	 *     all performance data left null
	 *     
	 * 2--create a procedure update date the record at 23:59:59 
	 * 	 update the current day record with login time, log out time, work time, performace etc
	 * 
	 * 3--get all the attendance record with null value in its filed--done!
	 * 
	 * SELECT * FROM `attendance`  WHERE firstTime IS NULL OR lastTime IS NULL OR firstTime=lastTime
	 
	 * explaination if user has no sign up , means fristTime=lastTime= null 
	 *              fristTime=lastTime--only one post
	 */		
	@SuppressWarnings("unchecked")
	@Override
	public List<Attendance> getAllOdds(int year, int month) {
		
		List<?> list =ht.find("FROM Attendance "
				+ "WHERE year="+year
				+ "AND month="+month
				+ "AND firstTime IS NULL "
				+ "OR firstTime=lastTime");
		
		return (List<Attendance>) list;
	}
	
	
}
