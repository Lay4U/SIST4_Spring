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

		//������������
		CalendarDTO username = dao.getUserName(seq);
		//�Բ����� ����°
		CalendarDTO withdate = dao.getWithdate(seq);
		//���� ��,�� 
		List<CalendarDTO> dateList = dao.getSysdate();
		//�� ���� ��ƾ->������ƾ��
		List<CalendarDTO> pastRoutineList = dao.pastRoutine(seq);
		//�� ���� ��ƾ->�����ƾ��
		List<CalendarDTO> nowRoutineList = dao.nowRoutine(seq);
		//��ƾ ������, �̹��� �ʷϺ� �޼���
		CalendarDTO getSuccess = dao.successday(seq);
		//ȸ�� �ۼ� �ϼ�
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

		//������������
		CalendarDTO username = dao.getUserName(seq);
		//�Բ����� ����°
		CalendarDTO withdate = dao.getWithdate(seq);
		//���� ��,�� 
		List<CalendarDTO> dateList = dao.getSysdate();

		req.setAttribute("username", username);
		req.setAttribute("withdate", withdate);
		req.setAttribute("dateList", dateList);
		
		return "calendar.statistic";
	}
}
