package com.care.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.care.member_service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	
	@RequestMapping("loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	@RequestMapping("login")
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.addObject("request", request);
		service.login(model);
		return model;
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userId");
		return "index";
	}
	
	@RequestMapping("signForm")
	public String signForm() {
		return "member/signForm";
	}
	
	@RequestMapping("signUp")
	public ModelAndView signUp(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.addObject("request", request);
		service.signMember(model);
		return model;
	}
	
	@RequestMapping("memberInfo")
	public String memberInfo(Model model) {
		service.listMember(model);
		return "member/memberInfo";
	}
	
	@RequestMapping("leave")
	public String deleteMember(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		service.deleteMember(model);
		return "member/index";
	}
}
