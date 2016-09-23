package com.samuel.attendance.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.samuel.attendance.model.Params;

@Repository
public class ParamsDaoImpl implements ParamsDao {
	
	@Autowired
	private HibernateTemplate ht;

	@Override
	public Params getParam(int paramsId) {
		
		return ht.get(Params.class, paramsId);
	}

	@Override
	@Transactional(readOnly=false,propagation=Propagation.REQUIRED)
	public int updateParam(Params params) {		
		//ht.update(params);
		//ht.update(params);
		params.setId(1);		
		ht.update(params);		
		return 0;
	}

}
