package com.routinemaker.myroutine;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.HashMap;
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
public class MyroutineController {

	@Autowired
	private MyroutineDAO dao;
	
	@RequestMapping(value = "/myroutine/myroutine.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String myroutine(HttpServletRequest req, HttpServletResponse resp, HttpSession session
			, String sdate
			, String fdate
			, String now) {
		
		System.out.println("now:" + now);
		System.out.println("sdate: " + sdate);
		System.out.println("fdate: " + fdate);
		
		String seq = "1"; //조회할 회원번호
		
		
		//데이터가공(프로필)
		ProfileDTO dto = dao.getprofile(seq);
		//1) 시작일로부터 몇일인지
		LocalDate today = LocalDate.now(); //2021-08-31
		String date = dto.getRegdate().substring(0, 10); //2021-08-19 (0~9까지 출력)
		LocalDate regdate = LocalDate.parse(date, DateTimeFormatter.ISO_DATE); //문자 > 날짜
		
		long days = ChronoUnit.DAYS.between(regdate, today); //현재날짜 - 정해진날짜(일차)
		String s = Long.toString(days); //long->문자열로변환
		dto.setRegdate(s);
		
		//기본셋팅 루틴
		List<MyroutineDTO> bdto = dao.getroutine(seq);
		req.setAttribute("bdto", bdto);
		
		//날짜이동시 루틴
		if (sdate != null && fdate != null) {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("seq", seq);
			map.put("sdate", sdate);
			map.put("fdate", fdate);
			
			//데이터가공(루틴)
			List<MyroutineDTO> rdto = dao.routinelist(map);
			req.setAttribute("rdto", rdto); //rnum까지 들어있음
			
			//날짜가공
			
			
			
		}
		
		req.setAttribute("sdate", sdate);
		req.setAttribute("fdate", fdate);
		req.setAttribute("now", now);
		
		req.setAttribute("dto", dto);
		return "myroutine.myroutine";
	}
	
	
	
	
}
