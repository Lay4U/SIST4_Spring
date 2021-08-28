package com.routinemaker.recommend;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class RecommendController {

	@RequestMapping(value = "/recommend/recommend.action", method = { RequestMethod.GET })
	public String recommend(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "recommend.recommend";
	}
	
	
	@RequestMapping(value = "/recommend/routineset.action", method = { RequestMethod.GET })
	public String recommendRoutineset(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "recommend.routineset";
	}
	

	
}
