<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<style>
</style>

</head>
<body>
	<!-- views > recommend > thembest.jsp -->
	<div class="container">
		<nav class="nav-recommend">
			<ul class="nav nav-tabs">
				<li role="presentation" class="active"><a href="#">👉 테마별 루틴</a></li>
				<li role="presentation"><a href="/routinemaker/recommend/routineset.action">👉 루틴 세트</a></li>
				<li role="presentation"><a href="/routinemaker/recommend/recommend.action">👉 추천 루틴</a></li>
			</ul>
		</nav>
		
		<h1 class="page-header">
			테마별 루틴 <br> <small>관심 있는 테마의 인기 루틴을 시작해 보세요😉</small>
		</h1>
		

		<div class="container-content" style="text-align: center;">
			<button type="button" class="btn btn-primary btn-routine">모닝루틴</button>
			<button type="button" class="btn btn-success btn-routine">저녁루틴</button>
			<button type="button" class="btn btn-info btn-routine">건강</button>
			<button type="button" class="btn btn-warning btn-routine">생산성</button>
			<button type="button" class="btn btn-danger btn-routine">생활</button>
			<button type="button" class="btn btn-primary btn-routine">셀프케어</button>
			<button type="button" class="btn btn-success btn-routine">여유</button>
			<button type="button" class="btn btn-info btn-routine">공부</button>
			<button type="button" class="btn btn-warning btn-routine">경제</button>
			<button type="button" class="btn btn-danger btn-routine">성장</button>
			<button type="button" class="btn btn-primary btn-routine">관계</button>
		</div>


		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>

		
		<div class="list-group list-group-recommend">
			
			<!-- <c:forEach var="dto" items="${bestRoutine}">
				<a href="#" id="color" class="list-group-item list-group-item-success">${dto.routineseq}. ${dto.name}</a>
			</c:forEach>
			 -->
			
			
			<!-- <c:forEach var="dto" items="${bestRoutine}">
			<a href="#" id="color1" class="list-group-item">${dto.routineseq}. ${dto.name}</a>
			</c:forEach> -->
			
			
			<!-- Test -->
			
			
			<!-- <c:if test="${dto.routineseq % dto.routineseq eq 0}">
        		<a href="#" id="color1" class="list-group-item">${dto.routineseq}. ${dto.name}</a>
			</c:if>
			 -->	
			
			
			<!-- <c:choose>  
			
				<c:when test="${dto.routineseq eq 10}"> 
					<a href="#" id="color1" class="list-group-item">${dto.routineseq}. ${dto.name}</a>
				</c:when> 
				 -->
				<!-- <c:when test="${dto.routineseq  0}">
					<a href="#" id="color2" class="list-group-item">${dto.routineseq}. ${dto.name}</a>
				</c:when> 
				
				<c:when test="${dto.routineseq 0}"> 
					<a href="#" id="color3" class="list-group-item">${dto.routineseq}. ${dto.name}</a>
				</c:when> 
				
					<c:when test="${dto.routineseq  0}"> 
					<a href="#" id="color4" class="list-group-item">${dto.routineseq}. ${dto.name}</a>
				</c:when>
				
				<c:otherwise>
					<a href="#" id="color4" class="list-group-item">${dto.routineseq}. ${dto.name}</a>
				</c:otherwise> -->
				
						
			
			<a href="#" class="list-group-item list-group-item-success">1. 아침
				05:00 기상☀</a>
			<div class="container-padding-horizen"></div>
			<a href="#" class="list-group-item list-group-item-info">2. 눈
				뜨자마자 물 한잔🥛</a>
			<div class="container-padding-horizen"></div>
			<a href="#" class="list-group-item list-group-item-warning">3.
				12시 전에 침대에 눕기🌙</a>
			<div class="container-padding-horizen"></div>
			<a href="#" class="list-group-item list-group-item-danger">4. 잠들기
				전 스트레칭🌙</a>
			<div class="container-padding-horizen"></div>
			<a href="#" class="list-group-item list-group-item-success">5. 헬스
				1시간</a>
			<div class="container-padding-horizen"></div>
			<a href="#" class="list-group-item list-group-item-info">6. 런데이
				🏃🏼‍♂️</a>
			<div class="container-padding-horizen"></div>
			<a href="#" class="list-group-item list-group-item-warning">7. 다음
				날 플랜 미리 짜기📌</a>
			<div class="container-padding-horizen"></div>
			<a href="#" class="list-group-item list-group-item-danger">8. 매일
				밤 일기 쓰기📖</a>
			<div class="container-padding-horizen"></div>
			<a href="#" class="list-group-item list-group-item-success">9. 하루
				5분 방정리 </a>
			<div class="container-padding-horizen"></div>
			<a href="#" class="list-group-item list-group-item-info">10. 하루
				3번 하늘 보기 ☁</a>

		</div>
	

	</div>

	<script>
	
	
		$(function(){
			
			$('#color1').addClass('list-group-item-success');
			$('#color2').addClass("list-group-item-info");
			$('#color3').addClass("list-group-item-warning");
			$('#color4').addClass('list-group-item-danger');
		})
		
		
	</script>
</body>
</html>