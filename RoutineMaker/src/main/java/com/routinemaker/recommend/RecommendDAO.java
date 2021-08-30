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
	
	

<<<<<<< HEAD
	//부트스트랩 코드에서 색상을 뽑아내는 방법
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
	
	
=======
>>>>>>> 449b35c4794d56a0ae07682a6ff2bc7d76e533fe
	
}
