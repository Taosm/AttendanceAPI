package com.samuel.attendance.service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.samuel.attendance.dao.AttendanceDao;
import com.samuel.attendance.model.Attendance;



@Component
public class AttenDanceBoImple implements AttendanceBo{
	
	@Autowired
	private AttendanceDao dao;

	/**
	 * @param staffId staffId, int number
	 * @param month curent month, int format--1,12
	 * @return  return this staff's current month record as a List
	 */	
	@Override
	public List<Attendance> getStaffCurrent(int staffId, int month) {
		
		// if month is 0, than get the current int
		month = (month==0)?getCurrent("month"):month;
		
		return dao.getStaffCurrent(staffId, month);
		
	}
	
	
	/**
	 * @param year  year, int /set to current year if omitted--2016
	 * @param month month, int /set to current year if omitted--9
	 * @return return all the odds records in this month as List
	 * 
	 * Below cases defined as  "Odd" or "异常" records----this will be impl in Dao layer
	 * a> staff is late for some minute(int) late-Y ()
	 * b> staff is earlyLeave fro some minute(int) earlyLeave-Y
	 * c> staff's workTime less than required hour (double) earlyLeave double
	 * d> staff only have one record in a day from Mon~Fri
	 * e> staff have no recored  in a day from Mon~Fri 
	 * 
	 */
	@Override
	public List<Attendance> getAllOdds(int year, int month) {
		
		// if year is 0, than get the current int
		year = (year==0)?getCurrent("year"):year;
		
		// if month is 0, than get the current int
		month = (month==0)?getCurrent("month"):month;

		return dao.getAllOdds(year, month);// will implement in Dao Layer
	}
	
	
	/**
	 * @param type which current number you need ?"month" and "year"
	 * @return the int year or month
	 */
	public int getCurrent(String type){
	    Date date= new Date();
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		
		if(type.equals("month")){
			return cal.get(Calendar.MONTH)+1; // count from 0, need add 1
		}
		
		if(type.equals("year")){
			return cal.get(Calendar.YEAR); // count year
		}
		
		return 0;// be careful, coder is damn lazy 
	}
	


}
