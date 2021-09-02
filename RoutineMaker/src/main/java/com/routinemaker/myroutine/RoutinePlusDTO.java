package com.routinemaker.myroutine;

import lombok.Data;

@Data
public class RoutinePlusDTO {
	
	private String name;
	private String time;
	private String state;
	private String alarm;
	private String repeat;
	private String theme;
	private String startDate;
	
	
	
	//전체루틴
	private String content;
	private String regdate;
	
	
	//루틴등록table
	private String rest; 
	private String readcount; 
	private String memberseq;
	
	

}
