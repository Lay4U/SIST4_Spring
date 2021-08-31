package com.routinemaker.recommend;

import lombok.Data;

@Data
public class RecommendDTO {

	private String routineseq;
	private String name;
	private String content;
	private String theme;
	private String regdate;
	

	//검색 필터
	private String keyword;
	
	
	
}
