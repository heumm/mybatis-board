package com.care.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

public interface MemberService {
	
	public void login(ModelAndView model);

	public void signMember(ModelAndView model);

	public void listMember(Model model);

	public void deleteMember(Model model);

}
