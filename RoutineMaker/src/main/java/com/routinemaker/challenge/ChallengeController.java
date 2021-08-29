package com.routinemaker.challenge;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ChallengeController {
	
	@Autowired
	private ChallengeDAO dao;
	
	@RequestMapping(value = "/challenge/challenge.action", method = { RequestMethod.GET })
	public String challenge(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		return "challenge.challenge";
	}
	
	@RequestMapping(value = "/challenge/challengeview.action", method = { RequestMethod.GET })
	public String challengeview(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		return "challenge.challengeview";
	}

}
