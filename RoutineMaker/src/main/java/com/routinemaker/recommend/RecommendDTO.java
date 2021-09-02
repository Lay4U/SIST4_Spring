package com.routinemaker.recommend;

import lombok.Data;

@Data
public class RecommendDTO {

	private String routineseq;
	private String name;
	private String content;
	private String theme;
	private String regdate;
	
	
	private String memberseq;
	private String routinesetseq;

	
	
	//검색 필터 -> 검색어 
	private String keyword;
	
	
	
}
