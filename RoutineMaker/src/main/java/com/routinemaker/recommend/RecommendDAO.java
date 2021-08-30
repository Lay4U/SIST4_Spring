package com.routinemaker.recommend;

<<<<<<< HEAD
=======
import java.sql.ResultSet;
import java.sql.SQLException;
>>>>>>> bfe005dbebc32e90cab1ca92e7599cc13dbb4444
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class RecommendDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	
	//猷⑦떞 由ъ뒪�듃 媛��졇�삤湲�
	public List<RecommendDTO> getRoutineName(String routienseq) {
			
		return template.selectList("recommend.getRoutineName", routienseq);
<<<<<<< HEAD
		
=======
	}


	//遺��듃�뒪�듃�옪肄붾뱶 
	public List<RecommendDTO> color() {
		
		ArrayList<RecommendDTO> colorlist = new ArrayList<RecommendDTO>();

			String color[] = {"success", "info", "warning", "danger"};
			
			for(int i=0; i<4; i++) {
			
				RecommendDTO dto = new RecommendDTO();
				
				dto.setColor(color[i]);
				
				colorlist.add(dto);
			}
			
		
		return colorlist;
>>>>>>> bfe005dbebc32e90cab1ca92e7599cc13dbb4444
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
