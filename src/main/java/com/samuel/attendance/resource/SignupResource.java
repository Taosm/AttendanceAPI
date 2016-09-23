package com.samuel.attendance.resource;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;


import com.samuel.attendance.model.Signup;
import com.samuel.attendance.service.SignupBo;

@Path("signup")
public class SignupResource {

	private SignupBo signupBo= StaticApplicationContext.getContext().getBean(SignupBo.class);
	
	/**
	 * 	this method return a 201 code
	 */
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response addSignup(@QueryParam("staffId")long staffId){
		Signup signup = new Signup(staffId);
		signupBo.createSignup(signup);
		return Response.status(Status.CREATED) // return 201 when successfully created signup record
					   .entity(signup)
					   .build();
	}
	
}
