package com.samuel.attendance.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.samuel.attendance.dao.ParamsDao;
import com.samuel.attendance.model.Params;

@Component
public class ParamsBoImpl implements ParamsBo {
	
	@Autowired
	private ParamsDao dao;

	@Override
	public Params getParams(int paramsid) {
		
		return dao.getParam(paramsid);
	}
	

	@Override
	@Transactional(readOnly=false,propagation=Propagation.REQUIRED)
	public boolean updateParams(Params params) {
		dao.updateParam(params);
		return false;
	}

}
