package com.routinemaker.recommend;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class RecommendDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	
	//루틴 리스트 가져오기
	public List<RecommendDTO> getRoutineName(String routienseq) {
			
		return template.selectList("recommend.getRoutineName", routienseq);
	}


	//부트스트랩코드 
	public List<RecommendDTO> color() {
		
		List<RecommendDTO> colorList =  List<RecommendDTO>;
		
			
		
		return null;
	}

	
	
	
}
