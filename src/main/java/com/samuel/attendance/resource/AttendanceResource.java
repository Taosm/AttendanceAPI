package com.samuel.attendance.resource;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.samuel.attendance.dao.AttendanceDao;
import com.samuel.attendance.model.Attendance;
import com.samuel.attendance.service.AttendanceBo;

@Path("attendances")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class AttendanceResource {
	
	private AttendanceDao dao = StaticApplicationContext.getContext().getBean(AttendanceDao.class);
	@POST
	@Path("/{staffId}")	
	public Attendance addRecord(@PathParam("staffId")int staffId ) throws ParseException{
		
		return dao.addRecord(staffId);
	}
	
	
	

	
	
	
	
	
	
	//since Jersey container is not managed by Spring container
	//need to get access the Spring WebAppContext
	//By defining an access class---margin for improvement!
	private AttendanceBo attendanceBo= StaticApplicationContext.getContext().getBean(AttendanceBo.class);
	
	
	
	/**
	 * @param staffId staffId, int number
	 * @param month curent month, int format--1,12
	 * @return  return this staff's current month record as json array
	 */	
	@GET
	@Path("/{staffId}")
	public List<Attendance> getStaffCurrent(@PathParam("staffId")int staffId ,			
										    @QueryParam("month") int month){		
		
		return attendanceBo.getStaffCurrent(staffId, month);//business impl in Bo pacakge	
	}
	
	
	/**
	 * @param year  current year, int format--2016
	 * @param month curent month, int format--1,12
	 * @return return all the odds records in this month
	 */	
	@GET
	@Path("odds")
	public List<Attendance> getAllOdds(@QueryParam("year")  int year,
									 @QueryParam("month")	int month){
		
		return attendanceBo.getAllOdds(year, month);//business impl in Bo pacakge	
	}
	
	
	
}
