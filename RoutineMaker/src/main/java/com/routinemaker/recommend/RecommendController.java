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
	
	
		@RequestMapping(value = "/recommend/name.action", method = { RequestMethod.GET })
		public String name(HttpServletRequest req, HttpServletResponse resp
						   ,HttpSession session) {


			return "recommend/name";
		}
	
		
		
		
		//POST
		//http://localhost:8090/recommend/routineadd.action
		//루틴 등록하기
		/*
		 * @RequestMapping(value = "/recommend/routineadd.action", method = {
		 * RequestMethod.POST })
		 * 
		 * @ResponseBody public int routineadd(HttpServletRequest req,
		 * HttpServletResponse resp, HttpSession session ,RecommendDTO dto) {
		 * 
		 * 
		 * return dao.routineAdd1(dto); }
		 * 
		 */
		
		
		//Ajax 구현
		//루틴 검색하기
	    @RequestMapping(value = "/recommend/m1.action", method = { RequestMethod.GET })
	    @ResponseBody
	    public List<RecommendDTO> Search(HttpServletRequest req, HttpServletResponse resp, 
	                                  HttpSession session, String keyword) {
	
	
	       return dao.routineSearchWord(keyword);
	    }
				
	    
	    
	    //테마별 루틴 조회하기
	    @RequestMapping(value = "/recommend/m2.action", method = { RequestMethod.GET })
		@ResponseBody
	    public List<RecommendDTO> list(HttpServletRequest req, HttpServletResponse resp
										 , HttpSession session, String theme) {

			
			return dao.getRoutineList(theme);
			
		}
	    
	    
	    
	    
	
	}


















