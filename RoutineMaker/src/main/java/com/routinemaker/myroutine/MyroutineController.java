package com.routinemaker.myroutine;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyroutineController {

	@Autowired
	private MyroutineDAO dao;
	
	@RequestMapping(value = "/myroutine/myroutine.action", method = { RequestMethod.GET })
	public String myroutine(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "myroutine";
	}
	
}
