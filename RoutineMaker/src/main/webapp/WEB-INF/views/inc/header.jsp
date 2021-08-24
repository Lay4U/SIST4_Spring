<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="header">
	<div id="header-content">
		<div id="header-left" onclick="location.href='/routinemaker/index/index.action';">
			<img src="/routinemaker/resources/images/logo.png"
				style="width: 250px; height: 100px;" />
		</div>
		<div id="header-right">
		
		<!-- div class="one">
            루틴추천
        </div>
        <div class="two">
            챌린지
        </div>
        <div class="three">
            소셜
        </div>
        <div class="four">
            캘린더
        </div>
        <div class="five">
            마이페이지
        </div> 
        
        -->


			<div id="one" class="one" onclick="location.href='/routinemaker/recommend/recommend.action';">
				<div class="sub">
					<i class="far fa-thumbs-up same"></i>
				</div>
				<div class="sub same">추천루틴</div>
			</div>
			<div class="two" onclick="location.href='/routinemaker/challenge.action';">
				<div class="sub">
					<i class="fas fa-flag"></i>
				</div>
				<div class="sub">챌린지</div>
			</div>
			<div class="three" onclick="location.href='/routinemaker/social.action';">
				<div class="sub">
					<i class="fas fa-globe-americas"></i>
				</div>
				<div class="sub">소셜</div>
			</div>
			<div class="four" onclick="location.href='/routinemaker/calendar/calendar.action';">
				<div class="sub">
					<i class="far fa-calendar-alt"></i>
				</div>
				<div class="sub">캘린더</div>
			</div>
			<div class="five" onclick="location.href='/routinemaker/mypage.action';">
				<div class="sub">
					<i class="fas fa-user"></i>
				</div>
				<div class="sub">마이페이지</div>
			</div>

		</div>
	</div>
</div>
