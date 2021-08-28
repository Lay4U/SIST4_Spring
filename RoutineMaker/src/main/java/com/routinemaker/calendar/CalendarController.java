package com.routinemaker.calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CalendarController {
	
	@Autowired
	private CalendarDAO dao;

	@RequestMapping(value = "/calendar/calendar.action", method = { RequestMethod.GET })
	public String calendar(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		String seq = "1";
		
		CalendarDTO dto = dao.m5(seq);
		
		req.setAttribute("dto", dto);
		
		return "calendar.calendar";
	}
	
	
	@RequestMapping(value = "/calendar/statistic.action", method = { RequestMethod.GET })
	public String statistic(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "calendar.statistic";
	}
}
