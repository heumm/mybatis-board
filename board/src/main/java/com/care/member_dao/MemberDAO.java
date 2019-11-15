package com.care.member_dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public void login() {
		
		sqlSession.selectOne("member.login");
	}
	
}
