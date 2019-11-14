package com.care.member_dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
}
