package com.samuel.attendance.dao;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.samuel.attendance.model.Attendance;
import com.samuel.attendance.model.Params;
import com.samuel.attendance.model.Staff;


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
	@Transactional(readOnly=false,propagation=Propagation.REQUIRED)
	public List<Attendance> getAllOdds(int year, int month) {

		
		//get the max number of days of passed month(month, year)
		Calendar mycal = new GregorianCalendar(year, month-1, 1);// since java count month from 0		
		int maxDays = mycal.getActualMaximum(Calendar.DAY_OF_MONTH);
		
		
		
		// ask for full month record 
		// so start a loop from 1~ maxDays
		for(int i=1;i<=maxDays;i++){
			
			
			//get the staffs who has no record on that day of month  i;
			String query= "SELECT id  FROM Staff id LEFT JOIN Attendance ON id=staffId WHERE staffId IS NULL AND day=? OR day IS NULL ";
	
			List<Staff> missStaffs = (List<Staff>) ht.find(query, i);		
			
			//help check outer loops wokrs fine, for debug
            System.out.println("missIDS : "+missStaffs.size());
			
            
            //missStaffs.size()==0 means totoaly no data on that day
            //we need to insert all the data
            if(missStaffs.size()==0){ 
            	
            	//get all the staffs
            	
            	List<Staff> staffList = getAllStaff();
            	
            	for(Staff staff:staffList){	
                	
            		Calendar cal = Calendar.getInstance();        		
            		cal.set(year,month+1, i+1);           		 
            		int dayOfWeek =cal.get(Calendar.DAY_OF_WEEK);
         	
                	Attendance attendance = new Attendance((int) staff.getId(),staff.getName(),i,month,dayOfWeek,year);
                	ht.save(attendance); 
            	}

            }else {// missStaffs.size()>0 means there are staff who has no post at least once on that day
            	               
    			for(Staff staff : missStaffs){
    				
                	//get the missed staff infor 
    				//create record for them on that day 				
    				int staffid = (int) staff.getId();
                	
            		Calendar cal = Calendar.getInstance();        		
            		cal.set(year,month+1, i+1);           		 
            		int dayOfWeek =cal.get(Calendar.DAY_OF_WEEK);
            		
            		//System.out.println("DayOfWeek :"+cal.get(Calendar.DAY_OF_WEEK));
              	
                	Attendance attendance = new Attendance(staffid,getStaffName(staffid),i,month,dayOfWeek,year);
                	ht.save(attendance); 
                	
                 }// end of add missed id
            	
            }
       
		  }// end of for loop ceiling -30 days
		
			//now , we got all the Odd records
			return (List<Attendance>) ht.find("from Attendance where firstTime is null or lastTime is null");	
		}
	


	@Override	
	@Transactional(readOnly=false,propagation=Propagation.REQUIRED)
	public Attendance addRecord(int  staffId) throws ParseException {
		
		
		String staffName = getStaffName(staffId);

		int day =CurrentDateHelper.getCurrent("day"); 
				
		int month= CurrentDateHelper.getCurrent("month"); 
		
		int dayOfWeek= CurrentDateHelper.getCurrent("dayOfWeek"); 
		
		int year = CurrentDateHelper.getCurrent("year"); 
		
		
		// if there's no record in the table , ]
		// then insert into the table with a new record
		Attendance currentAttendance  = getCuurentAttendance(staffId,day,month,year);
		
	   if(currentAttendance==null){
				
			Attendance attendance = new  Attendance(staffId,staffName,new Timestamp(new Date().getTime()) , day, month, dayOfWeek, year);		
			
			ht.save(attendance);
			
			return  attendance;
	   }else{
		   
		   Params params = getCurrentParams();
		   Timestamp lastTime = new Timestamp(new Date().getTime());	   
		   Timestamp firstTime = currentAttendance.getFirstTime();
		   
		   
		   // update the datas of attendance Record
		   currentAttendance.setLastTime(lastTime);

		   currentAttendance.setWorkTime(params.getWorkTime(firstTime,lastTime));
		   currentAttendance.setLate(params.getLateFlag(lastTime));
		   currentAttendance.setEarlyLeave(params.getLeaveFlag(lastTime));
		   currentAttendance.setAbsence(params.getAbsenceFlag(firstTime,lastTime));
		   
		   /*
		   attendance.workTime = workTime;
		   this.late = late;
			this.earlyLeave = earlyLeave;
			this.absence = absence;
			*/		   
		   
		   ht.update(currentAttendance);
		   return  currentAttendance;
				  
	   }
	   
	
	}

	private String getStaffName(int staffId) {
		
		String staffName=null;
		
		@SuppressWarnings("unchecked")
		List<Staff> list =(List<Staff>) ht.find("FROM Staff WHERE staff_staffId=?", staffId);		
		staffName =  list.get(0).getName();			
		return staffName;
	}
	

	
	// get  this id 's current attendance record , 
	
	// if the record existed , then update it 
	// if the record does not exitsed , than create a new empty record 
	// and save it into the attendance record

	private Attendance getCuurentAttendance(int staffId,int day, int month, int year) {
			
		@SuppressWarnings("unchecked")
		List<Attendance> list =(List<Attendance>) ht.find("FROM Attendance WHERE staffId=? and day=? and month=? and year=?", staffId,day, month, year);		
		
		if(list.size()>0){
			Attendance attendance = list.get(0);
			return attendance;
		}else{
			return null;
		}
	
	}
	
	
	public Params getCurrentParams(){
		
		@SuppressWarnings("unchecked")
		List<Params> list =(List<Params>) ht.find("FROM Params");		
		Params params =  list.get(0);		

		return params;		
	}
	
	public List<Staff> getAllStaff(){
		
		@SuppressWarnings("unchecked")
		List<Staff>list = (List<Staff>) ht.find("FROM Staff");		
		return list;
	}
	
	
}
