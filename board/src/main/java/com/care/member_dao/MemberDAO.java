package com.care.member_dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.care.member_dto.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public MemberDTO login(String id) {
		
		return sqlSession.selectOne("member.login", id);
	}

	public void insertMember(MemberDTO dto) {
		
		sqlSession.insert("member.insertMember", dto);
	}
	
}
