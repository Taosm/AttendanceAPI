package com.samuel.attendance.dao;

import com.samuel.attendance.model.Params;

public interface ParamsDao {
	
	public Params getParam(int paramsId);
	
	public int updateParam(Params params);

}
