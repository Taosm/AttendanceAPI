package com.samuel.attendance.dao;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.apache.commons.lang3.time.DurationFormatUtils;

import com.samuel.attendance.model.Params;

public class QuickTestClass {
	
	public static void main(String[] args) throws ParseException {
		
		
		/*

		int month = new QuickTestClass().getCurrent("month");
		int year = new QuickTestClass().getCurrent("year");
		
		System.out.println(month+""+year);
		*/
		
		/*
		DateFormat  formatter = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss");
		
		// we need to get current MM/dd/yyyy
		// and combine with the stored time(hh:mm:ss)
		
		String currentDatePrefix = new SimpleDateFormat("MM/dd/yyyy").format(new Date());
		
		Date date = (Date) formatter.parse(currentDatePrefix+" "+"08:30:00");
		
		// ok the biudl date is ok
		// now get convert to time stamp
		
		Timestamp stdFirstTime  = new  Timestamp(date.getTime());
		Timestamp now = new  Timestamp(new Date().getTime());
		
		long diff = now.getTime()-stdFirstTime.getTime();
		double differs= diff/(60*60);
		
		System.out.println("stdFirstTime : "+ stdFirstTime);
		System.out.println("now : "+ now);
		
		
		//String target = DurationFormatUtils.formatDuration(diff, "HH:mm:ss,SSS");
		
		String target = DurationFormatUtils.formatDuration(diff, "HH:mm:ss");
		System.out.println(target);
		//System.out.println(new Time(diff));
		
		System.out.println(Time.valueOf(target));
		
		//System.out.println(Time.valueOf(s));	
		

		int dayOfWeek = CurrentDateHelper.getCurrent("dayOfWeek");
		System.out.println("dayOfWeek : "+dayOfWeek);
		  */
		
		Time startTime= Time.valueOf("08:30:00");
		
	
		
		
		//Time endTime = Time.valueOf(new Time(new Date().getTime()).toString());
		
		
		//long timediff = new Timestamp(new Date().getTime()).getTime()-startTime.getTime();
		
		long timediff = Time.valueOf("08:47:00").getTime()-startTime.getTime();
		
		String time = DurationFormatUtils.formatDuration(timediff, "HH:mm:ss");
		String timeMinute = DurationFormatUtils.formatDuration(timediff, "mm");
		String hourMinute = DurationFormatUtils.formatDuration(timediff, "HH");
		
		
		//String minute = timeMinute.split(":")[1];
		
		//System.out.println(startTime);
		System.out.println("MINUTES GAP :"+Integer.parseInt(timeMinute));
		System.out.println("hour GAP :"+Integer.parseInt(hourMinute));
		System.out.println(Time.valueOf(time));
		
		int timeMinutes = Integer.parseInt(timeMinute);
		//double hour = timeMinutes%60+timeMinutes/60;
		
		double hour = timeMinutes/60+(double)timeMinutes/60;
		
		System.out.println("hour GAP :"+hour);
		
		
		
		
		
		Timestamp lastTime = new  Timestamp(new Date().getTime());

		
		String latestTime = lastTime.toString().split(" ")[1].substring(0, 7);
		
		System.out.println(latestTime);
		
		long timediff02 = Time.valueOf(latestTime).getTime()-Time.valueOf("00:09:21").getTime();
		
		String stringtime = DurationFormatUtils.formatDuration(timediff02, "HH:mm:ss");
		
		System.out.println("cheker :"+stringtime);
		
		
		//Calendar mycal = new GregorianCalendar(2016, 9, 27);
		
		Calendar cal = Calendar.getInstance();
		
		cal.set(2016, 9+1, 27+1);
		
		System.out.println("DayOfWeek :"+cal.get(Calendar.DAY_OF_WEEK));
	
		
		/*
		Timestamp standardFirstTime = new Timestamp(date.getTime());
		
		
		
		long diff = (lastTime.getTime() - standardFirstTime.getTime());		
		return new Timestamp(diff);
		
		System.out.println(string);
		
		
		*/
		
		
		
		
		
		/*
		DateFormat  formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = (Date) formatter.parse(+"08:30:00");
		
		System.out.println(date);
		
		System.out.println("no two :"+new Date());
		
		*/
		
		
		/*
		Params params = new Params();
		
		params.setStartTime("08:30:00");	
		
		Timestamp workTime = params.getWorkTime(new Timestamp(new Date().getTime()));
		
		*/
		//System.out.println(new Timestamp(new Date().getTime()).toString());
		
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
