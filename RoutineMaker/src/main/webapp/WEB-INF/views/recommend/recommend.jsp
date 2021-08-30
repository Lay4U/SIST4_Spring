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
					<a href="#" class="list-group-item list-group-item-success">${dto.routineseq}. ${dto.name}</a>
				</c:forEach>
			
			</div>
		
		</div>
		
	
	</div>

	<script>
	
	</script>

</body>
</html>