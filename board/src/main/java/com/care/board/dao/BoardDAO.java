package com.care.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.care.board.dto.BoardDTO;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	
	public List<BoardDTO> boardList() {
		return sqlSession.selectList("board.articles");
	}


	public void insertArticle(BoardDTO dto) {
		sqlSession.insert("board.insertArticle", dto);
	}

}
