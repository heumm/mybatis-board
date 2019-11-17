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
		//아이디가 없거나 입력하지 않은 경우 dto 가 null로 반환된다
		if(dto != null) {	//해당 아이디가 존재한다는 뜻
			if(dto.getPw().equals(pw)) {	//로그인 성공
				request.getSession().setAttribute("userId", dto.getId());
				model.setViewName("index");
			} else {
				model.addObject("loginErr", "비밀번호가 틀렸습니다.");
				model.setViewName("loginErr");
			}
		} else {
			model.addObject("loginErr", "아이디가 없습니다.");
			model.setViewName("loginErr");
		}
		
	}

	@Override
	public void insertMember(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		MemberDTO dto = new MemberDTO(request.getParameter("id"), request.getParameter("pw"));
		//예외 처리 필요
		dao.insertMember(dto);
	}
	
}
