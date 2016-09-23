package com.samuel.attendance.resource;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import com.samuel.attendance.model.Params;
import com.samuel.attendance.service.ParamsBo;

@Path("params")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class ParamsResource {
	private ParamsBo paramsBo= StaticApplicationContext.getContext().getBean(ParamsBo.class);
	
	@GET	
	public Response getParams(){
		Params params = paramsBo.getParams(1);
		
		return Response.status(Status.FOUND)
					   .entity(params)
					   .build();
	} 
	
	@PUT
	public Response updateParams(Params params){
		paramsBo.updateParams(params);
		
		return Response.status(Status.OK)
				       .entity(params)
				       .build();
	}
	

}
