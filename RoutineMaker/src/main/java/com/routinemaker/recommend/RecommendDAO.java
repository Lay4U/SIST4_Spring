package com.routinemaker.recommend;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class RecommendDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	
	//routineseq를 줄테니 routineName을 추출해오기
	public List<RecommendDTO> getRoutineName(String routienseq) {
			
		return template.selectList("recommend.getRoutineName", routienseq);

	}
	
	
	//루틴테마를 List로 받는다.
	public List<RecommendDTO> getRoutineTheme(String routineseq){
			
		return template.selectList("recommend.getRoutineTheme", routineseq);
		
	}
	
	
}
