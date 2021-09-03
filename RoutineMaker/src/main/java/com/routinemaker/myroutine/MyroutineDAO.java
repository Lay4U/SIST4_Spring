package com.routinemaker.myroutine;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyroutineDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public ProfileDTO getprofile(String seq) {
		// 특정사용자 프로필 정보 가져오기
		return template.selectOne("myroutine.profile", seq);
	}

	public List<MyroutineDTO> getroutine(String seq) {
		// 특정사용자 루틴목록 가져오기(기본세팅)
		return template.selectList("myroutine.routine", seq);
	}

	public List<MyroutineDTO> routinelist(HashMap<String, String> map) {
		// 날짜이동시 원하는 목록
		return template.selectList("myroutine.routinelist", map);
	}

	public void add(RoutinePlusDTO dto) {
		
		//반환값없는 insert
		template.insert("myroutine.add", dto);
	}

	public void add1(RoutinePlusDTO dto) {
		//반환값없는 insert1
		template.insert("myroutine.add1", dto);
	}

	public List<MyroutineDTO> futureList(String seq) {
		// 예약루틴목록
		return template.selectList("myroutine.future", seq);
	}

	public DailyDiaryDTO getDiary(String date) {
		//데일리 다이어리 목록가져오기
		return template.selectOne("myroutine.getDiary", date);
	}

	
	
}
