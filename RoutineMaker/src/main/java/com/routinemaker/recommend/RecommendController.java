package com.routinemaker.recommend;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class RecommendController {

	
	@Autowired
	private RecommendDAO dao;
	private String routineseq = "5";
	
	
	@RequestMapping(value = "/recommend/recommend.action", method = { RequestMethod.GET })
	public String recommend(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		//루틴베스트 리스트 불러오기
		List<RecommendDTO> bestRoutine = dao.getRoutineName(routineseq);
		req.setAttribute("bestRoutine", bestRoutine);
		
		
		//루틴 색상 정하기
		/*
		 * List<RecommendDTO> colorList = dao.color(); req.setAttribute("colorList",
		 * colorList);
		 */
		
		
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

		return "recommend.themebest";
	}
	
}
