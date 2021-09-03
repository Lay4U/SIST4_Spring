package com.routinemaker.calendar;

import lombok.Data;

@Data
public class CalendarDTO {

	private String memberseq;
	private String name;
	private String id;
	private String withdate;
	private String selfIntro;
	
	private int sysyear;
	private int sysmonth;
	private String todate;
		
	private String pastRoutineName;
	private String nowRoutineName;
	
	private int successday;
	private int allday;
	private int green;
	private String greendate;
	private int diarycnt;
	

}
