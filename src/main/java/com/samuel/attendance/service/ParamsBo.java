package com.samuel.attendance.service;


import com.samuel.attendance.model.Params;


public interface ParamsBo {
	
	public Params getParams(int paramsid);
	public boolean updateParams(Params params);

}
