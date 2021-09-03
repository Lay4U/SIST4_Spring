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

	<!-- views > recommend > recommendRoutineset.jsp -->

	<div class="container">
		<nav class="nav-recommend">
			<ul class="nav nav-tabs">
				<li role="presentation"><a
					href="/routinemaker/recommend/themebest.action">👉 테마별 루틴</a></li>
				<li role="presentation" class="active"><a
					href="/routinemaker/recommend/routineset.action">👉 루틴 세트</a></li>
				<li role="presentation"><a
					href="/routinemaker/recommend/recommend.action">👉 추천 루틴</a></li>
			</ul>
		</nav>

		<h1 class="page-header">
			루틴 세트 <br> <small>원하는 루틴을 클릭해서 내 피드로 퍼가 보세요!</small>
		</h1>


		<div class="container-routineset">

			<div class="img-container-routineset"
				onclick="location.href='/routinemaker/recommend/routinesetview.action';">
				<img class="image-routineset"
					src="/routinemaker/resources/images/miraclemorning.jpg" />
			</div>


			<div class="container-routineset-text" style="padding:30px;">
				<div class="container-title">인생을 바꾸는 미라클 모닝☀</div>
				<div class="container-padding-horizen"></div>
				<div class="container-content">
					한 해의 시작은 중요하게 여기면서, 왜 하루의 시작은 알람을 미루는 것으로 시작하나요?
					<미라클 모닝> 의 저자 할 엘로드는 아침을 기분 좋게 시작하는 것이 하루의 생산성과 성공을 결정한다고
					말하며, 아침을 기분 좋게 만드는 여섯가지 아침 습관을 제안합니다.☀<br> 
				</div>
				
				<mark><a href='#'>#모닝루틴</a>
			</div>


		</div>

		<hr>
		<div class="container-padding-horizen"></div>

		

			<div class="container-routineset">

			<div class="img-container-routineset"
				onclick="location.href='/routinemaker/recommend/routinesetview.action';">
				<img style="width:404px;" class="image-routineset"
					src="/routinemaker/resources/images/exercise.jpg" />
			</div>


			<div class="container-routineset-text" style="padding:30px;">
				<div class="container-title">퇴근 후 운동하는 습관 기르기!</div>
				<div class="container-padding-horizen"></div>
				<div class="container-content">
					퇴근 후 운동하는 습관을 만들고 싶지만, 실천하기 어려웠다면 이 루틴세트를 추천합니다 : )<br>
					 꾸준히 운동하기 위해 필요한 환경 세팅부터 실제 운동까지 모두 모아봤어요 :) <br> 
				</div>
				
				<mark><a href='#'>#건강</a>
			</div>


		</div>


		</div>	




		<script>
			
		</script>
</body>
</html>