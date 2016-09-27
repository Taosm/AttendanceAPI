package com.samuel.attendance.dao;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class OddsTest {
	
	public static void main(String[] args) {
		 
		
		for(int i=0;i<12;i++){
			Calendar mycal = new GregorianCalendar(2016, i, 1);
	
			mycal.getActualMaximum(Calendar.DAY_OF_MONTH);
			
			System.out.println(i+" "+mycal.getActualMaximum(Calendar.DAY_OF_MONTH));
		}
		

	}

}
