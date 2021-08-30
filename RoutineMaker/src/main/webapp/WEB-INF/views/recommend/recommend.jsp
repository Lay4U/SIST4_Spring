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

	<!-- views > recommend.jsp -->

	<div class="container">
	
		<nav class="nav-recommend">
			<ul class="nav nav-tabs">
				<li role="presentation"><a href="/routinemaker/recommend/themebest.action">👉 테마별 루틴</a></li>
				<li role="presentation"><a href="/routinemaker/recommend/routineset.action">👉 루틴 세트</a></li>
			</ul>
		</nav>
		
	
	
		<h1 class="page-header">
			추천 루틴👍
			<br><small>원하는 루틴을 클릭해서 내 피드로 퍼가 보세요!</small>
		</h1>


		<div class="container-recommend">
		<h2 class="page-header">루틴 검색🔍
			<br><small>원하는 루틴을 검색 해 보세요!</small>
		</h2>
		
		<form class="navbar-form navbar-left" role="search">
			<div class="form-group">
				<input type="text" class="form-control"
					placeholder="루틴을 검색하세요😘">
			</div>
			<button type="submit" class="btn btn-default">검색하기</button>
		</form>
		</div>
		
		
		<div class="container-padding-vertical">
			
		</div>

		<div class="container-recommend">
		<h2 class="page-header">종합 베스트 순위<br><small>지금 루틴메이커에서 가장 인기있는 루틴은?👀</small></h2>
		
			<div class="list-group list-group-recommend">
				
					<c:forEach var="dto" items="${bestRoutine}">
							<a href="#" id="color${dto.routineseq}" class="list-group-item">${dto.routineseq}. ${dto.name}</a>
					</c:forEach>
				<!-- 
				<a href="#" class="list-group-item list-group-item-success">1. 아침 05:00 기상☀</a>
				<a href="#" class="list-group-item list-group-item-info">2. 눈 뜨자마자 물 한잔🥛</a>
				<a href="#" class="list-group-item list-group-item-warning">3. 12시 전에 침대에 눕기🌙</a>
				<a href="#" class="list-group-item list-group-item-danger">4. 잠들기 전 스트레칭🌙</a>
				<a href="#" class="list-group-item list-group-item-success">5. 헬스 1시간</a> 
				<a href="#" class="list-group-item list-group-item-info">6. 런데이 🏃🏼‍♂️</a>
				<a href="#" class="list-group-item list-group-item-warning">7. 다음 날 플랜 미리 짜기📌</a>
				<a href="#" class="list-group-item list-group-item-danger">8. 매일 밤 일기 쓰기📖</a>
				<a href="#" class="list-group-item list-group-item-success">9. 하루 5분 방정리 </a> 
				<a href="#" class="list-group-item list-group-item-info">10. 하루 3번 하늘 보기 ☁</a>
				-->
				
			</div>
		
		</div>
		
	
	</div>

	<script>
	
	$(function(){
        
		<c:forEach items="${bestRoutine}" var="dto">
	       	num = ${dto.routineseq};
	       	
	       	num2= num%4;
	       	/* console.log(num); */
	       	console.log(num2);
	       	
	       	 if (num2 == 0){
					$('#color${dto.routineseq}').addClass('list-group-item-success');
					//console.log('list-group-item-success');
				}else if(num2 == 1){
					$('#color${dto.routineseq}').addClass('list-group-item-info');
					//console.log('list-group-item-info');
				}else if (num2 == 2){
					$('#color${dto.routineseq}').addClass('list-group-item-warning');
					//console.log('list-group-item-warning');
				}else if (num2 == 3){
					$('#color${dto.routineseq}').addClass('list-group-item-danger');
					//console.log('list-group-item-danger');
				}
       	 
       	</c:forEach>
       
        
     });
     
     
	
	/* 	 
    $(function(){
	    $('#color1').addClass('list-group-item-success');
	    $('#color2').addClass('list-group-item-info');
	    $('#color3').addClass('list-group-item-warning');
	    $('#color4').addClass('list-group-item-danger');
    }
    */
    
	</script>

</body>
</html>