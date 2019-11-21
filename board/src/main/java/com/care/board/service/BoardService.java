package com.care.board.service;

import org.springframework.ui.Model;

public interface BoardService {

	public void boardList(Model model);

	public void write(Model model);
	
}
