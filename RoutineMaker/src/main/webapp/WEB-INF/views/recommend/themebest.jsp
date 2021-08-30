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
				<li role="presentation" class="active"><a href="#">👉 테마별
						루틴</a></li>
				<li role="presentation"><a
					href="/routinemaker/recommend/routineset.action">👉 루틴 세트</a></li>
				<li role="presentation"><a
					href="/routinemaker/recommend/recommend.action">👉 추천 루틴</a></li>
			</ul>
		</nav>


		<h1 class="page-header">
			테마별 루틴 <br> <small>관심 있는 테마의 인기 루틴을 시작해 보세요😉</small>
		</h1>


		<div class="container-content" style="text-align: center;">
			<c:forEach var="rtdto" items="${routineTheme}">
				<button type="button" id="themecolor${rtdto.routineseq}"
					class="btn-routine btn">${rtdto.theme}</button>
			</c:forEach>
		</div>


		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>


		<div class="list-group list-group-recommend">
			<c:forEach var="dto" items="${bestRoutine}">
				<a href="#" id="colorroutine${dto.routineseq}"
					class="list-group-item">${dto.routineseq}.${dto.name}</a>
				<div class="container-padding-horizen"></div>
			</c:forEach>
		</div>


	</div>






	<script>
	
		$(function() {

			<c:forEach items="${routineTheme}" var="rtdto">
			num = ${rtdto.routineseq};

			num2 = num % 5;
			/* console.log(num); */
			/* console.log(num2); */

			if (num2 == 0) {
				$('#themecolor${rtdto.routineseq}').addClass('btn-primary');

			} else if (num2 == 1) {
				$('#themecolor${rtdto.routineseq}').addClass('btn-success');

			} else if (num2 == 2) {
				$('#themecolor${rtdto.routineseq}').addClass('btn-info');

			} else if (num2 == 3) {
				$('#themecolor${rtdto.routineseq}').addClass('btn-warning');

			} else if (num2 == 4) {
				$('#themecolor${rtdto.routineseq}').addClass('btn-danger');

			}

			</c:forEach>

		});

		
		$(function() {

			<c:forEach items="${bestRoutine}" var="dto">
			num = ${dto.routineseq};

			num2 = num % 4;
			/* console.log(num); */
			/*console.log(num2);*/

			if (num2 == 0) {
				$('#colorroutine${dto.routineseq}').addClass('list-group-item-success');
				
			} else if (num2 == 1) {
				$('#colorroutine${dto.routineseq}').addClass('list-group-item-info');
				
			} else if (num2 == 2) {
				$('#colorroutine${dto.routineseq}').addClass('list-group-item-warning');
				
			} else if (num2 == 3) {
				$('#colorroutine${dto.routineseq}').addClass('list-group-item-danger');
				
			}
					
			
			</c:forEach>
					
					
		});
		
	</script>

</body>
</html>











































