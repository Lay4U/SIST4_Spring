package com.routinemaker.calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CalendarController {

	@RequestMapping(value = "/calendar/calendar.action", method = { RequestMethod.GET })
	public String calendar(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "calendar";
	}
}
