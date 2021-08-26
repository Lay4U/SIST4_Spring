<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<style>
#left, #right {
	height: 500px;
	margin: 40px 0 0 10px;
	/* border: 1px solid black; */
}

#right {
	width: 550px;
}

#left {
	width: 550px;
}

#bar1, #bar2, #bar3, #bar4, #bar5 {
	height: 30px;
	display: flex;
	text-align: center;
	min-width: 1.6em;
}

.bigbar>.barbox {
	height: 70px;
	font-size: 1.3em;
	/* border: 1px solid pink; */
}

.bigbar > .barbox > p {
	font-size:15px;
	width:115px;
	/* border: 1px solid green; */
}

.bigbar > .barbox > #p1{
margin-top:30px;
}

.barright, .barleft, .bigbarright {
	float: left;
margin-left:10px;
	/* border: 1px solid red; */
}
.bigbarleft{
float: left;
margin-left:10px;
}

 .bigbarright {
	width: 125px;
}

 .bigbarleft {
	width: 400px;
}
.smallbar {
height:300px;
/* border: 2px solid red;  */
}

.smallbar>.barleft{
margin: 10px 0 10px 0;
width: 100px;
text-align:center;
font-size: 1.4em;
/* border: 1px solid blue; */ 
}

.smallbar>.barleft>.barbox {
margin-bottom:19px;
/* border: 1px solid black; */
}
.barright, .smallbar>.barright>.barbox{
	height: 35px;
	width: 370px;
	margin: 5px 10px 10px 0;
/* 	border: 1px solid black; */
}
.barpercent{
float: left;
height: 150px;
width:50px;
/* border: 1px solid red; */
}

.smallbar>.barpercent>.barbox{
margin:17px 17px 22px 0;
/* border: 1px solid black; */
}
.smallbar>.barpercent>.barbox > #bar5percent{
padding-top:6px;
/* border: 1px solid black; */
}

.month > p {
	text-align:left;
	margin-top:-25px;
}
.balloon_03 {
 position:relative;
 margin: 50px;
 width:400px;
 height:100px;
 background:#D3E2C1;
 border-radius: 10px;
  
}
.balloon_03:after {
 border-top:15px solid #D3E2C1;
 border-left: 15px solid transparent;
 border-right: 0px solid transparent;
 border-bottom: 0px solid transparent;
 content:"";
 position:absolute;
 top:10px;
 left:-15px;
}
.feedbackbox {
width:400px;
margin-left:50px;
font-size:1.2em;
/* border:1px solid red; */

}
.speech-bubble {
	position: relative;
	background: #c4ffbd;
	border-radius: .4em;
	margin-bottom:30px;
	padding:20px;
	height:100px;
}

.speech-bubble:after {
	content: '';
	position: absolute;
	right: 0;
	top: 50%;
	width: 0;
	height: 0;
	border: 29px solid transparent;
	border-left-color: #c4ffbd;
	border-right: 0;
	border-bottom: 0;
	margin-top: -14.5px;
	margin-right: -29px;
}

</style>

</head>
<body>
<!-- views > calendar > statistic.jsp -->
<div class="container">

	<!-- 왼쪽 단락 -->
	<div id="left">

		<i id="usericon" class="fas fa-user-circle"></i>
		<div class="userinfo">
			<p id="username">유 저 명</p>
			<p id="withdate">루틴 시작한지 9일 째</p>
		</div>

		<div class="month" style="margin-left:-75px;">
			<i class="fas fa-chevron-left"></i> 
			&nbsp;&nbsp;2021년 8월&nbsp;&nbsp;
			<i class="fas fa-chevron-right"></i>
		</div>


		<div class="bigbarleft">
			<div class="bigbar">
				<div class="barbox">
					<div>이번 달 루틴 성공률&nbsp;&nbsp;(10/100)</div>
					<div class="progress-bar progress-bar-info progress-bar-striped active"
						role="progressbar" id="bar1" aria-valuemin="0"
						aria-valuemax="100" style="width: 60%;"></div>
					
				</div>

				<div class="barbox">
					<div>이번 달 목표 달성까지 남은 달성률&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;🚩 목표:70%</div>
					<div class="progress-bar progress-bar-info progress-bar-striped active"
						role="progressbar" id="bar2" aria-valuemin="0"
						aria-valuemax="100" style="width: 100%;"></div>

				</div>
			</div>
		</div>
		<div class="bigbarright">
			<div class="bigbar">
				<div class="barbox">
					<p id="p1">60% 달성!</p>
				</div>
				<div class="barbox">
					<p id="p2">100% 남았어요!</p>
				</div>
			</div>
		</div>
		
		<div style="clear: left;"></div>

		<div class="smallbar">
			<div class="barleft">
				<div class="barbox">
					<p>초록불🟢</p>
				</div>
				<div class="barbox">
					<p>노란불🟡</p>
				</div>
				<div class="barbox">
					<p>빨간불🔴</p>
				</div>
			</div>

			<div class="barright">
				<div class="barbox">
					<div class="progress-bar progress-bar-success" role="progressbar"
						id="bar3" aria-valuemin="0" aria-valuemax="100"
						style="min-width: 1.6em; width: 35%;"></div>
				</div>

				<div class="barbox">
					<div class="progress-bar progress-bar-warning" role="progressbar"
						id="bar4" aria-valuemin="0" aria-valuemax="100"
						style="min-width: 1.6em; width: 50%;"></div>
				</div>

				<div class="barbox">
					<div class="progress-bar progress-bar-danger" role="progressbar"
						id="bar5" aria-valuemin="0" aria-valuemax="100"
						style="min-width: 1.6em; width: 100%;"></div>
				</div>
			</div>
			
			<div class="barpercent">
				<div class="barbox">
					<p id="bar3percent">35%</p>
				</div>
				<div class="barbox">
					<p id="bar4percent">50%</p>
				</div>
				<div class="barbox">
					<p id="bar5percent">100%</p>
				</div>
			</div><!-- end-<div class="barpercent"> -->

		</div><!-- end-<div class="smallbar"> -->

	</div> <!-- end-<div id="left">  -->


	<!-- 오른쪽 단락 -->
	<div id="right">
		<div id="btn">
			<input type="button" id="sinho" class="btn" value="신호등캘린더&nbsp;&nbsp;&nbsp;"
				onclick="location.href='/routinemaker/calendar/calendar.action';">
			<input type="button" id="tongye" class="btn" value="루틴통계📊" "
				onclick="location.href='/routinemaker/calendar/statistic.action';">
		</div>
		
		<div class="userinfo"></div>
		<div class="month">
		<p>이번 달 루틴 피드백📢</p>
		</div>
		
		<div class="feedbackbox">
		<div class="speech-bubble"><span>루틴 달성률이 부족해요!</span></div>
		<div class="speech-bubble"><span>회고를 잊지말고 작성해요!</span></div>
		
		</div>
		
		
		
	</div>

</div>


<script>

</script>

</body>
</html>