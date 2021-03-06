<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- views > calendar > statistic.jsp -->
<div class="container" id="statistic">
	<nav class="nav-recommend">
		<ul class="nav nav-tabs">
			<li role="presentation"><a href="/routinemaker/calendar/calendar.action">신호등캘린더🚦</a></li>
			<li role="presentation" class="active"><a href="/routinemaker/calendar/statistic.action">루틴통계📊</a></li>
		</ul>
	</nav>

	<!-- 왼쪽 단락 -->
	<div id="left">

		<div class="month" style="margin-left:-75px;">
	      	<i class="fas fa-chevron-left"></i>
	      	&nbsp;&nbsp;${withdate.todate}&nbsp;&nbsp;
	      	<i class="fas fa-chevron-right"></i>
		</div>

		<div class="bigbarleft">
			<div class="bigbar">
				<div class="barbox">
					<div>이번 달 루틴 성공률&nbsp;&nbsp;(1/2)</div>
					<div class="progress-bar progress-bar-info progress-bar-striped active"
						role="progressbar" id="bar1" aria-valuemin="0"
						aria-valuemax="100" style="width: 50%;"></div>
				</div>

				<div class="barbox">
					<div>이번 달 목표 달성까지 남은 달성률&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;🚩 목표:70%</div>
					<div class="progress-bar progress-bar-info progress-bar-striped active"
						role="progressbar" id="bar2" aria-valuemin="0"
						aria-valuemax="100" style="width: 70%;"></div>
				</div>
			</div>
		</div>
		
		<div class="bigbarright">
			<div class="bigbar">
				<div class="barbox">
					<p id="p1">50% 달성!</p>
				</div>
				<div class="barbox">
					<p id="p2">30% 남았어요!</p>
				</div>
			</div>
		</div>
		
		<div style="clear: left;"></div>

		<div class="smallbar">
			<div class="barleft">
				<div class="barbox">
					<p>초록불 💚</p>
				</div>
				<div class="barbox">
					<p>노란불 💛</p>
				</div>
				<div class="barbox">
					<p>빨간불 💔</p>
				</div>
			</div>

			<div class="barright">
				<div class="barbox">
					<div class="progress-bar progress-bar-success" role="progressbar"
						id="bar3" aria-valuemin="0" aria-valuemax="100"
						style="min-width: 1.6em; width: 50%;"></div>
				</div>

				<div class="barbox">
					<div class="progress-bar progress-bar-warning" role="progressbar"
						id="bar4" aria-valuemin="0" aria-valuemax="100"
						style="min-width: 1.6em; width: 50%;"></div>
				</div>

				<div class="barbox">
					<div class="progress-bar progress-bar-danger" role="progressbar"
						id="bar5" aria-valuemin="0" aria-valuemax="100"
						style="min-width: 1.6em; width: 0%;"></div>
				</div>
			</div>
			
			<div class="barpercent">
				<div class="barbox">
					<p id="bar3percent">50%</p>
				</div>
				<div class="barbox">
					<p id="bar4percent">50%</p>
				</div>
				<div class="barbox">
					<p id="bar5percent">0%</p>
				</div>
			</div><!-- end-<div class="barpercent"> -->

		</div><!-- end-<div class="smallbar"> -->

	</div> <!-- end-<div id="left">  -->


	<!-- 오른쪽 단락 -->
	<div id="right">
		
		<div><p style="font-size:2em;">이번 달 루틴 피드백📢</p></div>
		
		<div class="feedbackbox">
			<div class="speech-bubble"><span>루틴 달성률이 부족해요!</span></div>
			<div class="speech-bubble"><span>회고를 잊지말고 작성해요!</span></div>
		</div>
	
	</div><!-- end-<div id="right"> -->

</div> <!-- end-<div class="container" id="statistic"> -->


<script>



</script>
