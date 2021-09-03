package com.routinemaker.social;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SocialController {

	@RequestMapping(value = "/social/social.action", method = { RequestMethod.GET })
	public String social(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "social.social";
	}
}
