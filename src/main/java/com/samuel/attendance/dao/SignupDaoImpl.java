package com.samuel.attendance.dao;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.samuel.attendance.model.Signup;

@Repository
public class SignupDaoImpl implements  SignupDao {
	
	@Autowired
	private HibernateTemplate ht;
	
	@Transactional(readOnly=false,propagation=Propagation.REQUIRED)
	public int addSignup(Signup signup) {
		signup.setSignupTime(new Date());
		ht.save(signup);
		return 0;
	}

}
