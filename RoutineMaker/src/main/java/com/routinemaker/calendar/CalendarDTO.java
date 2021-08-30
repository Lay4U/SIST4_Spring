package com.routinemaker.calendar;

import lombok.Data;

@Data
public class CalendarDTO {

	private String memberseq;
	private String name;
	private String id;
	private String withdate;
	
	private int sysyear;
	private int sysmonth;
		
	private String pastRoutineName;
	private String nowRoutineName;

}
