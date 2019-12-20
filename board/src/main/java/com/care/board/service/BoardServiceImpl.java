package com.care.board.service;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.board.dao.BoardDAO;
import com.care.board.dto.BoardDTO;
import com.care.board.pagination.Pagination;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;
	
	@Override
	public void boardList(Model model) {
		Map<String, Object> map = model.asMap();
		int curPage = (int)map.get("curPage");
		System.out.println("서비스 내부 curPage 값 : " + curPage);
		Pagination pagination = new Pagination(dao.getBoardListCount(), curPage);
		model.addAttribute("articles", dao.boardList(pagination));
		model.addAttribute("pagination", pagination);
	}

	@Override
	public void write(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		BoardDTO dto = new BoardDTO(request.getParameter("title"), request.getParameter("content"), request.getParameter("writerId"));
		dao.insertArticle(dto);
	}

	@Override
	public void getArticle(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		model.addAttribute("article", dao.selectArticle(request.getParameter("num")));
		model.addAttribute("page", request.getParameter("page"));
		model.addAttribute("num", request.getParameter("num"));
	}

	@Override
	public void deleteArticle(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String num = request.getParameter("num");
		BoardDTO dto = new BoardDTO(Integer.parseInt(num));
		dao.deleteArticle(dto);
		model.addAttribute("page", request.getParameter("page"));
	}

}
