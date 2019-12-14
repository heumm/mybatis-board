package com.care.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.board.pagination.Pagination;
import com.care.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@RequestMapping(value="board")
	public String board(Model model, 
			@RequestParam(value="curPage", required=false, defaultValue="1") int curPage,
			HttpServletRequest request) {
		System.out.println("현재 페이지 : " + curPage);
		model.addAttribute("curPage", curPage);
		service.boardList(model);
		
		return "board/board";
	}
	
	@RequestMapping("writeForm")
	public String writeForm() {
		return "board/writeForm";
	}
	
	@RequestMapping("write")
	public String write(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		service.write(model);
		return "redirect:board";
	}
	
	@RequestMapping("article")
	public String getArticle(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		service.getArticle(model);
		return "board/article";
	}
}
