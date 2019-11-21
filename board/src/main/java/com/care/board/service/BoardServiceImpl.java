package com.care.board.service;

import java.util.List;

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
		List<BoardDTO> list = dao.boardList();
		model.addAttribute("articles", list);
	}

}
