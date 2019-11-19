package com.care.member_service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.care.member_dao.MemberDAO;
import com.care.member_dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO dao;
	
	@Override
	public void login(ModelAndView model) {
		Map<String, Object> map = model.getModel();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberDTO dto = dao.selectMember(id);
		if(dto != null) {	
			if(dto.getPw().equals(pw)) {	
				request.getSession().setAttribute("userId", dto.getId());
				model.setViewName("index");
			} else {
				model.addObject("loginErr", "비밀번호가 틀렸습니다.");
				model.setViewName("loginErr");
			}
		} else {
			model.addObject("loginErr", "아이디가 존재하지 않습니다.");
			model.setViewName("loginErr");
		}
		
	}

	@Override
	public void insertMember(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		MemberDTO dto = new MemberDTO(request.getParameter("id"), request.getParameter("pw"));
		//���� ó�� �ʿ�
		dao.insertMember(dto);
	}
	
}
