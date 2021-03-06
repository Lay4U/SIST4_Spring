package com.routinemaker.recommend;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.routinemaker.myroutine.RoutinePlusDTO;



@Repository
public class RecommendDAO {

	
	@Autowired
	private SqlSessionTemplate template;
	
	
	//routineseq를 줄테니 routineName을 가져오기
	public List<RecommendDTO> getRoutineName(String routienseq) {
		
		return template.selectList("recommend.getRoutineName", routienseq);

	}
	
	//루틴테마를 List로 받는다.
	public List<RecommendDTO> getRoutineTheme(String routineseq){
		
		return template.selectList("recommend.getRoutineTheme", routineseq);
		
	}

	
	//루틴테마별 루틴을 List로 받는다
		public List<RecommendDTO> getRoutineList(String theme){
			
			return template.selectList("recommend.getRoutineList", theme);
			
		}

	
	
	
	//루틴번호로 루틴이름을 받아온다.
	
 	public List<RecommendDTO> routineSearchWord(String keyword){
         
         return template.selectList("recommend.routineSearchWord", keyword);
         
    }

 	//루틴추가하기
 	public void routineAdd1(RecommendPlusDTO dto) {
		
		//반환값없는 insert
		template.insert("recommend.routineAdd1", dto);
	}

	public void routineAdd2(RecommendPlusDTO dto) {
		
		//반환값없는 insert1
		template.insert("recommend.routineAdd2", dto);
	}

	

	
	
}

















