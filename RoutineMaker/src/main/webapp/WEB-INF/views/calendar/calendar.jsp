<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<style>
#left, #right {
	height: 650px;
	margin: 20px 0 0 10px;
	border: 1px solid black;
}

#right {
	width: 650px;
}

#left {
	width: 450px;
}

#left, #right, #usericon, #userinfo {
	float: left;
}

#usericon {
	font-size: 6em;
	margin: 0 20px 10px 25px;
}

#userinfo {
	height: 80px;
	width: 300px;
	margin: 15px 0px 10px 20px;
	/* border: 1px solid red; */
}

#username {
	font-size: 1.6em;
}

#widthdate {
	font-size: 1.3em;
}

#btn {
	height: 80px;
	float: right;
	padding: 15px;
}

.btn {
	width: 150px;
	height: 50px;
	font-size: 1.5em;
}

.month {
	text-align: center;
	clear: left;
	font-size: 2em;
	margin: 20px;
	/* border: 1px solid red; */
}

.month>i {
	cursor: pointer;
}

.submonth {
	height: 30px;
	font-size: 1.3em;
	margin: 20px;
	/* border:1px solid blue; */
}

.subleft {
	float: left;
	margin-left: 10px;
}

input[name=rb] {
	display: none;
}

.submonth label {
	cursor: pointer;
	margin-right: 10px;
}

.submonth #nowlabel {
	padding-left: 130px;
	/* border:1px solid green; */
}

input[type=radio]:checked+label {
	text-decoration: underline;
	text-shadow: 1px 1px 1px gray;
}

.subright #now:checked ~ #pastroutine {
	display: none;
}

.subright #past:checked ~ #nowroutine {
	display: none;
}

#nowroutine, #pastroutine {
	margin: 20px;
}

.calsub {
	clear: right;
	width: 500px;
	height: 70px;
	margin: 0 auto;
	padding-left: 35px;
	text-align: center;
	/* border: 1px solid blue; */
}

.calsub>div {
	float: left;
	font-size: 1.3em;
	margin: 0px 25px 0px 25px;
	/* border: 1px solid red; */
}

.calsub>div>div>span {
	font-size: 1.4em;
}

.calbox {
	clear: left;
	width: 620px;
	height: 350px;
	margin: 0 auto;
	border: 1px solid blue;
}


.successrate {
	width: 620px;
	height: 100px;
	margin: 0 auto;
	margin-top: 10px;
	border: 1px solid green;
}
</style>

</head>
<body>
   <!-- views > calendar > calendar.jsp -->
   <div class="container">
       
       <!-- 왼쪽 단락 -->
       <div id="left">
       
		    <i id="usericon" class="fas fa-user-circle"></i>
		    <div id="userinfo">
		      	<p id="username">유 저 명</p>
		      	<p id="withdate">루틴 시작한지 9일 째</p>
	      	</div>
	      	
	      	<div class="month">
		      	<i class="fas fa-chevron-left"></i>
		      	&nbsp;&nbsp;2021년 8월&nbsp;&nbsp;
		      	<i class="fas fa-chevron-right"></i>
	      	</div>
	      	
	      	<div class="submonth">
	      		<div class="subleft">이 달의 루틴</div>
	      		
	      		<div class="subright">
	      			<input type="radio" id="now" name="rb" checked><label id="nowlabel" for="now">진행 루틴</label> 
					<input type="radio" id="past" name="rb"><label for="past">완료 루틴</label>

			      	<div id="nowroutine">
			      		<ul>
			      			<li>잠 자기전 물한잔</li>
			      			<li>외출전 플러그 뽑기</li>
			      		</ul>
			      	</div>
			      	<div id="pastroutine">
			      		<ul>
			      			<li>영어단어 외우기</li>
			      			<li>루틴메이커 작성하기</li>
			      		</ul>
		      		</div>
		      		
	      		</div> <!-- end-class="subright" -->
	      	</div> <!-- end-class="submonth" -->
      </div> <!-- end-class="left" --> 
      
      
      <!-- 오른쪽 단락 -->
      <div id="right">
      	<div id="btn">
      		<input type="button" id="sinho" class="btn" value="신호등캘린더">
      		<input type="button" id="tongye" class="btn" value="루틴통계">
      	</div>
      	
      	<div class="calsub">
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
      	
      	</div>
      	
      	<h4>&nbsp;이번 달 초록불 달성률</h4>
      	<div class="successrate">
      		
      	</div>
      
      </div>
      
   </div>   
   
   <script>
      
   </script>
</body>
</html>