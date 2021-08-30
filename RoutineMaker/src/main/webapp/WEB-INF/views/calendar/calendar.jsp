<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <!-- views > calendar > calendar.jsp -->
  <div class="container">
	<nav class="nav-recommend">
		<ul class="nav nav-tabs">
			<li role="presentation" class="active"><a href="/routinemaker/calendar/calendar.action">신호등캘린더🚦</a></li>
			<li role="presentation"><a href="/routinemaker/calendar/statistic.action">루틴통계📊</a></li>
		</ul>
	</nav>

	<!-- 왼쪽 단락 -->
      <div id="left">
      
	    <i id="usericon" class="fas fa-user-circle"></i>
	    <div class="userinfo">
	      	<p id="username">${username.name}</p>
	      	<p id="withdate">루틴 시작한지 ${withdate.withdate}일 째</p>
      	</div>
      	
      	<div class="month">
	      	<i class="fas fa-chevron-left"></i>
	      	<c:forEach items="${dateList}" var="dto">
	      	&nbsp;&nbsp;${dto.sysyear}년 ${dto.sysmonth}월&nbsp;&nbsp;
	      	</c:forEach>
	      	<i class="fas fa-chevron-right"></i>
      	</div>
      	
      	<div class="submonth">
      		<div class="subleft">이 달의 루틴</div>
      		
      		<div class="subright">
      			<input type="radio" id="now" name="rb" checked><label id="nowlabel" for="now">진행 루틴</label> 
				<input type="radio" id="past" name="rb"><label for="past">지난 루틴</label>

		      	<div id="nowroutine">
					<ul>
						<c:if test="${nowRoutineList.size() == 0}">
							진행중인 루틴이 없어요.😅 <br>루틴을 추가해보세요!
						</c:if>
						<c:if test="${nowRoutineList.size() != 0}">
							<c:forEach items="${nowRoutineList}" var="nowdto">
								<li>${nowdto.nowRoutineName}</li>
							</c:forEach>
						</c:if>
					</ul>
				</div>
		      	<div id="pastroutine">
		      		<ul>
			      		<c:if test="${pastRoutineList.size() == 0}">
			      			지난 루틴이 없어요.😏	      		
			      		</c:if>
			      		<c:if test="${pastRoutineList.size() != 0}">
			      			<c:forEach items="${pastRoutineList}" var="pastdto">
			      				<li>${pastdto.pastRoutineName}</li>
			      			</c:forEach>
			      		</c:if>
		      		</ul>
	      		</div>
	      		
      		</div> <!-- end-class="subright" -->
      	</div> <!-- end-class="submonth" -->
     </div> <!-- end-class="left" --> 
     
     
     <!-- 오른쪽 단락 -->
     <div id="right">
     	
     	<div class="calsub">
     	<div style="font-size:4em; margin-left:-20px;">🚥</div>
      	<div><i class="far fa-check-square"></i> 루틴 수행
      		<div><span>6</span>일</div>
      	</div>
      	<div><i class="far fa-dot-circle"></i> 초록불
      		<div><span>3</span>회</div>
      	</div>
      	<div><i class="far fa-edit"></i> 회고 작성
      		<div><span>9</span>일</div>
      	</div>
     	</div>


		<div class="calbox">
		<div class="thiscal">월간 신호등 캘린더🚦</div>
			<table id="calendar">
				<tr>
					<td id="tbCalendarYM" colspan="7">yyyy년 m월</td>
					<!-- <td><label onclick="nextCalendar()"></label></td> -->
				</tr>
				<tr>
					<td>일</td>
					<td>월</td>
					<td>화</td>
					<td>수</td>
					<td>목</td>
					<td>금</td>
					<td>토</td>
				</tr>
			</table>
		</div>

		<div class="successrate">
		<h4>&nbsp;이번 달 초록불 달성률 <span style="font-size:1.3em;">😎</span></h4>
			<div class="progress-bar progress-bar-success" role="progressbar" 
				id="progress-bar" aria-valuemin="0" aria-valuemax="100" 
				style="width: 60%;">60%
			</div>
		</div>
	
	</div> <!-- end-<div id="right"> -->

  </div> <!-- end-<div class="container"> -->

<script>

	var today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
	var date = new Date();//today의 Date를 세어주는 역할
	
	function buildCalendar() {//현재 달 달력 만들기
		var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		//이번 달의 첫째 날,
		//new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.     
		//new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다. 
		//왜냐면 getMonth()는 0~11을 반환하기 때문
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);
		//이번 달의 마지막 날
		//new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
		//day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
		//대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
		var tbCalendar = document.getElementById("calendar");
		//날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
		var tbCalendarYM = document.getElementById("tbCalendarYM");
		//테이블에 정확한 날짜 찍는 변수
		//innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
		//new를 찍지 않아서 month는 +1을 더해줘야 한다. 
		tbCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월";

		/*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
		while (tbCalendar.rows.length > 2) {
			//열을 지워줌
			//기본 열 크기는 body 부분에서 2로 고정되어 있다.
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
			//테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지 
			//30일 이후로 담을달에 순서대로 열이 계속 이어진다.
		}
		var row = null;
		row = tbCalendar.insertRow();
		//테이블에 새로운 열 삽입//즉, 초기화
		var cnt = 0;// count, 셀의 갯수를 세어주는 역할
		// 1일이 시작되는 칸을 맞추어 줌
		for (i = 0; i < doMonth.getDay(); i++) {
			/*이번달의 day만큼 돌림*/
			cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
			cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
		}
		/*달력 출력*/
		for (i = 1; i <= lastDate.getDate(); i++) {
			//1일부터 마지막 일까지 돌림
			cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
			cell.innerHTML = i;//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
			cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
			if (cnt % 7 == 1) {/*일요일 계산*/
				//1주일이 7일 이므로 일요일 구하기
				//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
				cell.innerHTML = "<font color=#F79DC2>" + i
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 0) {/* 1주일이 7일 이므로 토요일 구하기*/
				//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
				cell.innerHTML = "<font color=skyblue>" + i
				//7번째의 cell에만 색칠
				row = calendar.insertRow();
				//토요일 다음에 올 셀을 추가
			}
			/*
				//오늘의 날짜에 노란색 칠하기
				if (today.getFullYear() == date.getFullYear()
					&& today.getMonth() == date.getMonth()
					&& i == date.getDate()) {
				//달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
				cell.bgColor = "#FAF58C";//셀의 배경색을 노랑으로 
				}
			*/
			
		}
	}
	
	buildCalendar();
	
</script>
