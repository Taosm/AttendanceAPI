package com.samuel.attendance.service;

import org.springframework.beans.factory.annotation.Autowired;

public class Tets {
	
	@Autowired
	SignupBo signupBo;
	
	public static void main(String[] args) {
		
		if(new Tets().signupBo==null){
			System.out.println("nonn");
			
		}else{
			System.out.println("fill");
		}
	}

}
