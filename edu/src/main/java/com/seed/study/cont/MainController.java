package com.seed.study.cont;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.seed.study.serv.MainService;
import com.seed.study.vo.InsertUser;
import com.seed.study.vo.MainVo;

/**
 * ===============[ Type ]===============
 * @파일명: MainController.java
 * @작성일자: 2021. 6. 16.
 * @작성자: 
 * @프로젝트이름: edu
 * @프로그램설명: 
 * @변경이력:
 * ================[SeedIT]==============
 */
@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	// @Autowired 타입의 어노테이션을 붙여주면 생성할 필요 없이 변수 선언만 해도
	// 빈 스캐닝을 통해 아래의 'mainService'의 이름을 가지고 있는 빈을 찾아서
	// 자동으로 생성 후 주입해준다.
	
	@Autowired
	private MainService mainService;
	
	
	
	/**
	 * ===============[ Method ]==============
	 * @파일명: MainController.java
	 * @작성일자: 2021. 6. 16.
	 * @작성자: 
	 * @메소드이름: selectList
	 * @메소드설명: 
	 * @변경이력:
	 * ================[SeedIT]==============
	 */
	@RequestMapping(value = "selectList.do", method = RequestMethod.GET)
	@ResponseBody
	public String selectList(HttpServletResponse response, HttpServletRequest request) throws Exception{
		logger.info("[리스트 불러오기]");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ArrayList<MainVo> userList = mainService.selectList();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("userList", userList);
		return new Gson().toJson(resultMap);
	}
	
	@RequestMapping(value = "insertUser.do", method = RequestMethod.POST)
	@ResponseBody
	public String insertUser(HttpServletRequest request, HttpServletResponse response, InsertUser iu) throws IOException {
		
		logger.info("[유저추가]");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		int result1 = 0;
		int result2 = 0;
		
		result1 = mainService.insertUser1(iu);
		
		if (result1 > 0) {
			result2 = mainService.insertUser2(iu);
			if (result2 > 0) {
				logger.info("[INSERT 성공]");
				resultMap.put("status", "success");
			} else {
				logger.info("[INSERT 실패]");
				resultMap.put("status", "fail");
			}
		} else {
			logger.info("[INSERT 실패");
			resultMap.put("status", "fail");
		}
		return new Gson().toJson(resultMap);
	}
	
	@RequestMapping(value = "deleteUser.do", method = RequestMethod.POST)
	@ResponseBody
	public String deleteUser(HttpServletRequest request, HttpServletResponse response, @RequestBody ArrayList<Integer> data) throws Exception {
		logger.info("[유저삭제]");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		int result1 = 0;
		int result2 = 0;
	
		for (Integer userNum : data) {
			result1 = mainService.deleteUser1(userNum);
			if (result1 > 0) {
				result2 = mainService.deleteUser2(userNum);
				if (result2 > 0) {
					logger.info("[DELETE 성공]");
					resultMap.put("status", "success");
				} else {
					logger.info("[DELETE 실패]");
					resultMap.put("status", "fail");
				}
			} else {
				logger.info("[DELETE 실패]");
				resultMap.put("status", "fail");
			}
			
		}
		return new Gson().toJson(resultMap);
	}
}
