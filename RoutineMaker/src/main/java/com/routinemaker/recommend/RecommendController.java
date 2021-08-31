package com.routinemaker.recommend;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class RecommendController {

	
	@Autowired
	private RecommendDAO dao;
	private String routineseq = "";
	
	
	@RequestMapping(value = "/recommend/recommend.action", method = { RequestMethod.GET })
	public String recommend(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		List<RecommendDTO> bestRoutine = dao.getRoutineName(routineseq);
		req.setAttribute("bestRoutine", bestRoutine);

		return "recommend.recommend";
	}
	
	
	@RequestMapping(value = "/recommend/routineset.action", method = { RequestMethod.GET })
	public String recommendRoutineset(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "recommend.routineset";
	}
	

	@RequestMapping(value = "/recommend/routinesetview.action", method = { RequestMethod.GET })
	public String routinesetview(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "recommend.routinesetview";
	}
	
	
	@RequestMapping(value = "/recommend/themebest.action", method = { RequestMethod.GET })
	public String themebest(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		
		//루틴이름
		List<RecommendDTO> bestRoutine = dao.getRoutineName(routineseq);
		req.setAttribute("bestRoutine", bestRoutine);
	
		
		//루틴테마
		List<RecommendDTO> routineTheme = dao.getRoutineTheme(routineseq);
		req.setAttribute("routineTheme", routineTheme);
		
		return "recommend.themebest";
		
	}
	
		
		//Ajax 구현
		//루틴검색하기
		@RequestMapping(value = "/recommend/m1.action", method = { RequestMethod.GET })
		@ResponseBody
		public RecommendDTO Search(HttpServletRequest req, HttpServletResponse resp, 
												HttpSession session, String routineseq) {

			//이따가 String keyword를 불러와서 조회하면 될 거 같기도 하다
			
			RecommendDTO dto = dao.routineSearch(routineseq);
			
			return dto;
			
		}
	
	
	
	
	
}
