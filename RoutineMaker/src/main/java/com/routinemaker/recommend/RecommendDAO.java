package com.routinemaker.recommend;
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


	
}
