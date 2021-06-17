package com.seed.study.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.seed.study.vo.MainVo;

@Repository("mainDao")
public class MainDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String Namespace = "mainMapper";
	
	public ArrayList<MainVo> selectList() throws Exception {
		return (ArrayList) sqlSession.selectList(Namespace + ".selectList");
	}
	
//	public int insertUser1(InsertUser iu) {
//		return sqlSession.insert(Namespace + ".insertUser1", iu);
//	}
//	public int insertUser2(InsertUser iu) {
//		return sqlSession.insert(Namespace + ".insertUser2", iu);
//	}
//	public int deleteUser1(int userNum) {
//		return sqlSession.delete(Namespace + ".deleteUser1", du);
//	}
//	public int deleteUser1(int userNum) {
//		return sqlSession.delete(Namespace + ".deleteUser1", du);
//	}
}
