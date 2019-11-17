package com.care.member_service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

public interface MemberService {
	public void login(ModelAndView model);

	public void insertMember(Model model);
}
