package com.routinemaker.challenge;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

<<<<<<< HEAD
import org.springframework.beans.factory.annotation.Autowired;
=======
>>>>>>> 71a1534e3e6c91585856ba10c2ad04e993dc8f9b
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ChallengeController {
	
<<<<<<< HEAD
	@Autowired
	private ChallengeDAO dao;
	
=======
>>>>>>> 71a1534e3e6c91585856ba10c2ad04e993dc8f9b
	@RequestMapping(value = "/challenge/challenge.action", method = { RequestMethod.GET })
	public String challenge(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {


		return "challenge.challenge";
	}

}
