package com.routinemaker.recommend;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



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

	
	//루틴번호로 루틴이름을 받아온다.
	
 	public List<RecommendDTO> routineSearchWord(String keyword){
         
         return template.selectList("recommend.routineSearchWord", keyword);
         
    }
	 

	
	/*
	 * public List<RecommendDTO> routineSearch(String keyword) {
	 * 
	 * return template.selectList("recommend.routineSearch", keyword); }
	 */
	
	
	
	/*
	 * //루틴테마별로 -> 루틴 알려주기 public RecommendDTO routineCheckTheme(String theme) {
	 * 
	 * 
	 * return template.selectOne("recommend.routineCheckTheme", theme); }
	 */

	
	
	
}

















