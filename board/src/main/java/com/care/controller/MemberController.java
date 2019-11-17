package com.care.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String login(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		service.login(model);
		
		return "redirect:/";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userId");
		return "index";
	}
	
	@RequestMapping("signForm")
	public String signForm() {
		return "signForm";
	}
	
	@RequestMapping("signUp")
	public String signUp(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		service.insertMember(model);
		
		
		return "index";
	}
}
