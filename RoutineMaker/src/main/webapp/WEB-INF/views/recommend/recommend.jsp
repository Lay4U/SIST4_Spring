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
		
		 <form method="GET" action="" class="navbar-form navbar-left" role="search">
			<div class="form-group">
			<select name="column" id="column" class="form-control">
					<!-- <option value="postTitle">최신</option>
					<option value="content">조회수</option>
					<option value="nickName">좋아요</option> -->
			</select> 
				<input type="text" id="search1" class="form-control" placeholder="루틴을 검색하세요😘">
			</div>
			<button type="submit" id="recommendbtn1" class="btn btn-default">검색하기</button>
			<hr>
			<h3>루틴 검색 결과</h3>
			<div id="m1" class="alert alert-success"></div>
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
     
     
	/* 검색하는 코드 Ajax */
	
		$('#recommendbtn1').click(function() {
			
			$.ajax({
				type: 'GET',
				url: '/routinemaker/recommend/m1.action',
				data: 'routineseq=' + $('#search1').val(),
				dataType: 'json',
				success: function(dto) {
					$('#m1').text('routineseq:' + dto.routineseq);
					
				},
				
				error: function(a,b,c) {
					console.log(a,b,c);
				}
			});
			
		});
		
	
    
	</script>

</body>
</html>