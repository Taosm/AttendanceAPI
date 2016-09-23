package com.samuel.attendance.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.samuel.attendance.dao.SignupDao;
import com.samuel.attendance.model.Signup;

@Component
public class SignupBoImpl implements SignupBo {
	
	@Autowired
	private SignupDao dao;

	@Override
	@Transactional(readOnly=false,propagation=Propagation.REQUIRED)
	public int createSignup(Signup signup) {
		return dao.addSignup(signup);
	}

	public SignupDao getDao() {
		return dao;
	}

	public void setDao(SignupDao dao) {
		this.dao = dao;
	}

}
