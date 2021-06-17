package com.seed.study.serv;

import java.util.ArrayList;

import com.seed.study.vo.InsertUser;
import com.seed.study.vo.MainVo;

public interface MainService {

	ArrayList<MainVo> selectList() throws Exception;
	
	public int insertUser1(InsertUser iu);
	
	public int insertUser2(InsertUser iu);
//	
//	public int deleteUser1(int userNum);
//	
//	public int deleteUser2(int userNum);
}
