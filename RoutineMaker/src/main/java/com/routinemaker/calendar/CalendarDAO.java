package com.routinemaker.calendar;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CalendarDAO {
		
	@Autowired
	private SqlSessionTemplate template;

	public CalendarDTO getUserName(String seq) {
		//유저명가져오기
		return template.selectOne("calendar.getUserName", seq);
	}
	
	public CalendarDTO getWithdate(String seq) {
		//함께한지 몇일째
		return template.selectOne("calendar.getWithdate", seq);
	}

	public List<CalendarDTO> getSysdate() {
		//현재 년,월
		return template.selectList("calendar.getSysdate");
	}
	
	public List<CalendarDTO> pastRoutine(String seq) {
		//이 달의 루틴->지난루틴들
		return template.selectList("calendar.pastRoutine", seq);
	}
	
	public List<CalendarDTO> nowRoutine(String seq) {
		//이 달의 루틴->진행루틴들
		return template.selectList("calendar.nowRoutine", seq);
	}
	
	public List<CalendarDTO> green(String seq) {
		//초록불 달성 일자들 반환
		return template.selectList("calendar.green", seq);
	}
	
	public CalendarDTO successday(String seq) {
		//루틴수행일, 이번달 초록불 달성률
		return template.selectOne("calendar.successday", seq);
	}
	
	public CalendarDTO getdiary(String seq) {
		return template.selectOne("calendar.getdiary", seq);
	}



}
