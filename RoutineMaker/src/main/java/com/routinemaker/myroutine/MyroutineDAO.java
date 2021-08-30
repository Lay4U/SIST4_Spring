package com.routinemaker.myroutine;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyroutineDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public MyroutineDTO getprofile(String seq) {
		// 사용자정보가져오기
		return template.selectOne("myroutine.profile", seq);
	}

	
	
}
