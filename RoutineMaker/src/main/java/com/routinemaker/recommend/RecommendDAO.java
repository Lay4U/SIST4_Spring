package com.routinemaker.recommend;

import java.util.ArrayList;
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


	//부트스트랩 코드 
//	public ArrayList<RecommendDTO> color(String routineseq) {
//		
//		ArrayList<String> colorList = new ArrayList<String>();
//		
//		colorList.add("success");
//		colorList.add("info");
//		colorList.add("warning");
//		colorList.add("danger");
//	
//		
//		if( template.selectList("recommend.color", routineseq).equals("1")) {
//			
//			/* colorList.get(0); */
//		}
//		
//		return null;
//		
//	}
	
	
	
}
