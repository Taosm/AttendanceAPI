package com.samuel.attendance.dao;

import java.util.Calendar;
import java.util.Date;

public class CurrentDateHelper {
	
	static public int getCurrent(String type){
	    Date date= new Date();
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		
		if(type.equals("month")){
			return cal.get(Calendar.MONTH)+1; // count from 0, need add 1
		}
		
		if(type.equals("year")){
			return cal.get(Calendar.YEAR); // count year
		}
		
		if(type.equals("day")){
			return cal.get(Calendar.DAY_OF_MONTH); // count dat of month, from 1
		}
		
		if(type.equals("dayOfWeek")){
			return cal.get(Calendar.DAY_OF_WEEK)-1; // count day of week, sunday is the firstDay
		}
		
		return 0;// be careful, coder is damn lazy 
	}

}
