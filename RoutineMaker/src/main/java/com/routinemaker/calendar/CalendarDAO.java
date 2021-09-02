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
		//������������
		return template.selectOne("calendar.getUserName", seq);
	}
	
	public CalendarDTO getWithdate(String seq) {
		//�Բ����� ����°
		return template.selectOne("calendar.getWithdate", seq);
	}

	public List<CalendarDTO> getSysdate() {
		//���� ��,��
		return template.selectList("calendar.getSysdate");
	}
	
	public List<CalendarDTO> pastRoutine(String seq) {
		//�� ���� ��ƾ->������ƾ��
		return template.selectList("calendar.pastRoutine", seq);
	}
	
	public List<CalendarDTO> nowRoutine(String seq) {
		//�� ���� ��ƾ->�����ƾ��
		return template.selectList("calendar.nowRoutine", seq);
	}



}
