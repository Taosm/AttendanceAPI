package com.samuel.attendance.model;


import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

import org.apache.commons.lang3.time.DurationFormatUtils;

import com.samuel.attendance.dao.CurrentDateHelper;


@XmlRootElement
@Entity
public class Params {
	@Id
	private int id;
	private String startTime;   //format 17:30
	private String offTime; // format 8:20
	private int lateTime;    // in minute
	private int earlyLeaveTime; // in minute 
	private double absenceTime;  // in minute 
	
	public Params() {

	}

	public Params(int id, String startTime, String offTime, int lateTime, int earlyLeaveTime, double absenceTime) {
		this.id = id;
		this.startTime = startTime;
		this.offTime = offTime;
		this.lateTime = lateTime;
		this.earlyLeaveTime = earlyLeaveTime;
		this.absenceTime = absenceTime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getOffTime() {
		return offTime;
	}

	public void setOffTime(String offTime) {
		this.offTime = offTime;
	}

	public int getLateTime() {
		return lateTime;
	}

	public void setLateTime(int lateTime) {
		this.lateTime = lateTime;
	}

	public int getEarlyLeaveTime() {
		return earlyLeaveTime;
	}

	public void setEarlyLeaveTime(int earlyLeaveTime) {
		this.earlyLeaveTime = earlyLeaveTime;
	}

	public double getAbsenceTime() {
		return absenceTime;
	}

	public void setAbsenceTime(double absenceTime) {
		this.absenceTime = absenceTime;
	}
	
	

	public Time  getWorkTime(Timestamp firstTime ,Timestamp lastTime) throws ParseException {
		
		
		//convert the current String to Time
		//Time stdStartTime= Time.valueOf(startTime);// ok

		// since lastTime is a timestamp, we can get the time directly
		String strfirstTime = firstTime.toString().split(" ")[1].substring(0, 7);
		String strlastTime = lastTime.toString().split(" ")[1].substring(0, 7);
		long timediff = Math.abs(Time.valueOf(strlastTime).getTime()-Time.valueOf(strfirstTime).getTime());
		
		String stringtime = DurationFormatUtils.formatDuration(timediff, "HH:mm:ss");
		
		System.out.println(Time.valueOf(stringtime).toString());
		return  Time.valueOf(stringtime);
		
		
		
		/*-- this is version is long and not efficient , logic messed up
		DateFormat  formatter = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss");		
		// we need to get current MM/dd/yyyy
		// and combine with the stored time(hh:mm:ss)
		// convert firtTime to currentTime stamp
		String currentDatePrefix = new SimpleDateFormat("MM/dd/yyyy").format(new Date());		
		Date date = (Date) formatter.parse(currentDatePrefix+" "+startTime);		
		Timestamp standardFirstTime = new Timestamp(date.getTime());
		//caculate the timestamp difference		
		long diff = (lastTime.getTime() - standardFirstTime.getTime());			
		String target = DurationFormatUtils.formatDuration(diff, "HH:mm:ss,SSS");
		
		return Time.valueOf(target);					
		  //String t = "00:00:00" 
		 //Time.valueOf(t);
		*/
		
	}

	// now compare with startTime and 
	public String getLateFlag(Timestamp firstTime) {
		
		//user private int lateTime;  
		if(isWorkDay()){
			
			String strfirstTime = firstTime.toString().split(" ")[1].substring(0, 7);
			long stdStartTime= Time.valueOf(startTime).getTime();
			long morningTime = Time.valueOf(strfirstTime).getTime();
			int minuteDiff = getMinuteDiff(morningTime,stdStartTime);
			
			if(minuteDiff>=lateTime){
				return "Y";
				
			}else {
				
				return "N";
			}
			
		}else {
			
			return "N";
		}

	}

	public String getLeaveFlag(Timestamp lastTime) {
		
		//user private int earlyLeaveTime;  
		
		// user user earlt leave means satff leaves before stfOffTime
		//user stdOffTime-lastTime
		if(isWorkDay()){
			
			String strlastTime = lastTime.toString().split(" ")[1].substring(0, 7);
			long stdOffTime= Time.valueOf(offTime).getTime();
			long afternoonTime = Time.valueOf(strlastTime).getTime();
			int minuteDiff = getMinuteDiff(stdOffTime,afternoonTime);
			
			if(minuteDiff>=earlyLeaveTime){
				return "Y";
			}else {				
				return "N";
			}
			
		}else {
			
			return "N";
		}

	}
	
	

	public String getAbsenceFlag(Timestamp firstTime,Timestamp lastTime) throws ParseException {
		
		if(isWorkDay()){
			
			Time actualWorkTime = getWorkTime(firstTime,lastTime);
			
			/*
			System.out.println(actualWorkTime.toString());

			String timeMinute = DurationFormatUtils.formatDuration(Math.abs(actualWorkTime.getTime()), "mm");	
			
			//String timeMinute = DurationFormatUtils.formatDuration(Time.valueOf("01:05:02").getTime(), "mm");
			int minutes = Integer.parseInt(timeMinute);
			
			// this the workHour
			double hour = minutes/60+(double)minutes/60-(12.55-(1+26/60));// erroe modified;
			
			System.out.println(hour);
			
			*/
			
			//01:29:03
			String stractualWorkTime = actualWorkTime.toString();
			
			String [] tokens = stractualWorkTime.split(":");
			
			double hour = Integer.parseInt(tokens[0])+Double.parseDouble(tokens[1])/60
					
					      +Double.parseDouble(tokens[2])/(60*60);
			
			System.out.println(hour);
			
			if(hour<=6.5){
				return "Y";
			}else {
				return "N";
			}

		}else {			
			return "N";
		}
	}
	
	
	/**
	 * @return boolean , to tell if current date is workDay or not
	 */
	public boolean isWorkDay(){
		
		boolean isWorkDay = false;
		int dayOfWeek = CurrentDateHelper.getCurrent("dayOfWeek");
		 
		if(-1<dayOfWeek && dayOfWeek<6){// sunday is -1, monday is 1-----saturday is 6
			isWorkDay=true;			
			return true;		
		}	
		return isWorkDay;
	}
	
	/**
	 * 
	 * @param time1 
	 * @param time2
	 * @return
	 */
	public int getMinuteDiff(long time1,long time2 ){
		
		long diff = time1-time2;
		//get the diff in  minutes
		
		if(diff>0){
			String timeMinute = DurationFormatUtils.formatDuration(diff, "mm");	
			return Integer.parseInt(timeMinute);
		}
	
		return 0;	// that means the staff is earlier than std time
	}
	
	
}
