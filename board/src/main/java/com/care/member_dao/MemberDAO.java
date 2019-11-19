package com.care.member_dao;

import java.util.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.care.member_dto.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public MemberDTO selectMember(String id) {
		return sqlSession.selectOne("member.selectMember", id);
	}

	public void insertMember(MemberDTO dto) {
		
		sqlSession.insert("member.insertMember", dto);
	}
	
	public List<MemberDTO> listMember() {
		return sqlSession.selectList("member.listMember");
	}

	public void deleteMember(String id) {
		sqlSession.delete("member.deleteMember", id);
	}
	
}
