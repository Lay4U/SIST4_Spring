package com.routinemaker.challenge;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ChallengeDAO {

	private SqlSessionTemplate template;

	public List<ChallengeDTO> getOriginalList() {
		
		return template.selectList("calendar.getOriginalList");
	}
}
