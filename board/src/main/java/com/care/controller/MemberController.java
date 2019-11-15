package com.care.controller;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.member_service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	
	
	@RequestMapping("loginForm")
	public String loginForm() {
		
		return "loginForm";
	}
	
	@RequestMapping("login")
	public String login() {
		
		return "redirect:/";
	}
}
