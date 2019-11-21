package com.care.board.service;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.board.dao.BoardDAO;
import com.care.board.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;
	
	@Override
	public void boardList(Model model) {
		model.addAttribute("articles", dao.boardList());
	}

	@Override
	public void write(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		BoardDTO dto = new BoardDTO(request.getParameter("title"), request.getParameter("content"), request.getParameter("writerId"));
		dao.insertArticle(dto);
	}

}
