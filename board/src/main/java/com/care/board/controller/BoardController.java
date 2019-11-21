package com.care.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@RequestMapping("board")
	public String board(Model model) {
		
		service.boardList(model);
		return "board/board";
	}
	
	@RequestMapping("write")
	public String write(Model model) {
		return "";
	}
}
