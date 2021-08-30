package com.routinemaker.recommend;

import java.sql.ResultSet;
import java.sql.SQLException;
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
	}

	
	
	
}
