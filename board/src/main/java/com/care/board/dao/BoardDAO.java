package com.care.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.care.board.dto.BoardDTO;
import com.care.board.pagination.Pagination;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	
	public int getBoardListCount() {
		return sqlSession.selectOne("board.listCount");
	}
	
	public List<BoardDTO> boardList(Pagination pagination) {
		return sqlSession.selectList("board.articles", pagination);
	}

	public void insertArticle(BoardDTO dto) {
		sqlSession.insert("board.insertArticle", dto);
	}

	public BoardDTO selectArticle(String boardNum) {
		return sqlSession.selectOne("board.selectArticle", boardNum);
	}
	
	public void deleteArticle(BoardDTO dto) {
		sqlSession.delete("board.deleteArticle", dto);
	}
	
}
