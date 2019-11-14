package com.care.member_service;

import org.springframework.beans.factory.annotation.Autowired;

import com.care.member_dao.MemberDAO;

public class MemberLoginServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO dao;
	
	@Override
	public void execute() {
		// TODO Auto-generated method stub
		
	}
	
}
