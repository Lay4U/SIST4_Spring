package com.routinemaker.calendar;

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
public class CalendarController {

	@Autowired
	private CalendarDAO dao;
	private String seq = "1";

	@RequestMapping(value = "/calendar/calendar.action", method = { RequestMethod.GET })
	public String getUserInfo(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		//유저명가져오기
		CalendarDTO username = dao.getUserName(seq);
		//함께한지 몇일째
		CalendarDTO withdate = dao.getWithdate(seq);
		//현재 년,월 
		List<CalendarDTO> dateList = dao.getSysdate();
		//이 달의 루틴->지난루틴들
		List<CalendarDTO> pastRoutineList = dao.pastRoutine(seq);
		//이 달의 루틴->진행루틴들
		List<CalendarDTO> nowRoutineList = dao.nowRoutine(seq);
		//루틴 수행일, 이번달 초록불 달성률
		CalendarDTO getSuccess = dao.successday(seq);
		//회고 작성 일수
		CalendarDTO getDiary = dao.getdiary(seq);
		
		
		req.setAttribute("username", username);
		req.setAttribute("withdate", withdate);
		req.setAttribute("dateList", dateList);
		req.setAttribute("pastRoutineList", pastRoutineList);
		req.setAttribute("nowRoutineList", nowRoutineList);
		req.setAttribute("getSuccess", getSuccess);
		req.setAttribute("getDiary", getDiary);

		return "calendar.calendar";
	}
	
	@RequestMapping(value = "/calendar/m1.action", method = { RequestMethod.GET })
	@ResponseBody
	public List<CalendarDTO> getgreen(HttpServletRequest req, 
							    HttpServletResponse resp, 
							    HttpSession session ) {
		
		
		
	return dao.green(seq);

	}


	@RequestMapping(value = "/calendar/statistic.action", method = { RequestMethod.GET })
	public String statistic(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		//유저명가져오기
		CalendarDTO username = dao.getUserName(seq);
		//함께한지 몇일째
		CalendarDTO withdate = dao.getWithdate(seq);
		//현재 년,월 
		List<CalendarDTO> dateList = dao.getSysdate();

		req.setAttribute("username", username);
		req.setAttribute("withdate", withdate);
		req.setAttribute("dateList", dateList);
		
		return "calendar.statistic";
	}
}
