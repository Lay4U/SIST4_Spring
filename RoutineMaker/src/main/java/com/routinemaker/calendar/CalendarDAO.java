package com.routinemaker.calendar;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CalendarDAO {
		
	@Autowired
	private SqlSessionTemplate template;

	public CalendarDTO m5(String seq) {
		
		return template.selectOne("calendar.name", seq);
	}

}
