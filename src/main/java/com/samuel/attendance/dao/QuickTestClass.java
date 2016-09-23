package com.samuel.attendance.dao;

import java.sql.Time;
import java.util.Calendar;
import java.util.Date;

public class QuickTestClass {
	
	public static void main(String[] args) {
			
		int month = new QuickTestClass().getCurrent("month");
		int year = new QuickTestClass().getCurrent("year");
		
		System.out.println(month+""+year);
	}
	
	
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
		
		return 0;// 
	}
	
	

}
