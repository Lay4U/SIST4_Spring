<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
   <!-- challenge -->
   <div class="challenge-container">
      <h1 class="page-header">Challenge</h1>
      	
      
      <div class="searchbox">
			<form method="GET" action="/webproject/main/member/study/list.do">
				<select name="column" id="column" class="form-control">
					<option value="postTitle" a>제목</option>
					<option value="content">내용</option>
					<option value="nickName">닉네임</option>
					<option value="all">제목+내용</option>
				</select> 
				<input type="text" name="search" id="search" class="form-control"
					required placeholder="검색어를 입력하세요."> 
				<input type="submit"value="검색하기" class="btn btn-default">
			</form>
		</div>
		
		<div class="order">
			<button type="button" class="btn btn-default" name="orderRegdate" value="regdate">최신순</button>
			<button type="button" class="btn btn-default" name="orderSupport" value="support">응원순</button>
			<button type="button" class="btn btn-default" name="orderReadCount" value="readcount">조회순</button>
		</div>
		
		<div class="recommend">
			고객님의 루틴을 분석하고 추천하는 챌린지입니다!
		</div>
		
		<div class="recommend-list">
			<div class="list-content">
				<div class="list_name">
				신나게 RUN! 데일리 20분 러닝!<br>[2주 5회]
				</div>
				<div class="list_content">20분동안 속도상관없이 달리기챌린지다.20분동안 속도상관없이 달리기챌린지다.</div>
				<div class="list_startdate">START: 2020-01-01</div>
				<div class="list_enddate">END: 2020-01-01</div>
				<div class="profile">
					<div class="profile_image">
						<i id="usericon" class="fas fa-user-circle"></i>
					</div>
					<div class="id">myroutine</div>
					<div class="support">응원수: 20</div>
				</div>
			</div>
			
			<div class="list-content">
				<div class="list_name">
				신나게 RUN! 데일리 20분 러닝!<br>[2주 5회]
				</div>
				<div class="list_content">20분동안 속도상관없이 달리기챌린지다.20분동안 속도상관없이 달리기챌린지다.</div>
				<div class="list_startdate">START: 2020-01-01</div>
				<div class="list_enddate">END: 2020-01-01</div>
				<div class="profile">
					<div class="profile_image">
						<i id="usericon" class="fas fa-user-circle"></i>
					</div>
					<div class="id">myroutine</div>
					<div class="support">응원수: 20</div>
				</div>
			</div>
			
			<div class="list-content">
				<div class="list_name">
				신나게 RUN! 데일리 20분 러닝!<br>[2주 5회]
				</div>
				<div class="list_content">20분동안 속도상관없이 달리기챌린지다.20분동안 속도상관없이 달리기챌린지다.</div>
				<div class="list_startdate">START: 2020-01-01</div>
				<div class="list_enddate">END: 2020-01-01</div>
				<div class="profile">
					<div class="profile_image">
						<i id="usericon" class="fas fa-user-circle"></i>
					</div>
					<div class="id">myroutine</div>
					<div class="support">응원수: 20</div>
				</div>
			</div>
			
			
		</div>
		<hr>
		
		<div class="original">
			고객님의 루틴을 분석하고 추천하는 챌린지입니다!
		</div>
		<div class="original-list">
			<div class="original-content">
				<div class="list_name">
				신나게 RUN! 데일리 20분 러닝!<br>[2주 5회]
				</div>
				<div class="list_content">20분동안 속도상관없이 달리기챌린지다.20분동안 속도상관없이 달리기챌린지다.</div>
				<div class="list_startdate">START: 2020-01-01</div>
				<div class="list_enddate">END: 2020-01-01</div>
				<div class="profile">
					<div class="profile_image">
						<i id="usericon" class="fas fa-user-circle"></i>
					</div>
					<div class="id">myroutine</div>
					<div class="support">응원수: 20</div>
				</div>
			</div>
			
			<div class="original-content">
				<div class="list_name">
				신나게 RUN! 데일리 20분 러닝!<br>[2주 5회]
				</div>
				<div class="list_content">20분동안 속도상관없이 달리기챌린지다.20분동안 속도상관없이 달리기챌린지다.</div>
				<div class="list_startdate">START: 2020-01-01</div>
				<div class="list_enddate">END: 2020-01-01</div>
				<div class="profile">
					<div class="profile_image">
						<i id="usericon" class="fas fa-user-circle"></i>
					</div>
					<div class="id">myroutine</div>
					<div class="support">응원수: 20</div>
				</div>
			</div>
			
			<div class="original-content">
				<div class="list_name">
				신나게 RUN! 데일리 20분 러닝!<br>[2주 5회]
				</div>
				<div class="list_content">20분동안 속도상관없이 달리기챌린지다.20분동안 속도상관없이 달리기챌린지다.</div>
				<div class="list_startdate">START: 2020-01-01</div>
				<div class="list_enddate">END: 2020-01-01</div>
				<div class="profile">
					<div class="profile_image">
						<i id="usericon" class="fas fa-user-circle"></i>
					</div>
					<div class="id">myroutine</div>
					<div class="support">응원수: 20</div>
				</div>
			</div>
			
			<div class="original-content">
				<div class="list_name">
				신나게 RUN! 데일리 20분 러닝!<br>[2주 5회]
				</div>
				<div class="list_content">20분동안 속도상관없이 달리기챌린지다.20분동안 속도상관없이 달리기챌린지다.</div>
				<div class="list_startdate">START: 2020-01-01</div>
				<div class="list_enddate">END: 2020-01-01</div>
				<div class="profile">
					<div class="profile_image">
						<i id="usericon" class="fas fa-user-circle"></i>
					</div>
					<div class="id">myroutine</div>
					<div class="support">응원수: 20</div>
				</div>
			</div>
			
			<div class="original-content">
				<div class="list_name">
				신나게 RUN! 데일리 20분 러닝!<br>[2주 5회]
				</div>
				<div class="list_content">20분동안 속도상관없이 달리기챌린지다.20분동안 속도상관없이 달리기챌린지다.</div>
				<div class="list_startdate">START: 2020-01-01</div>
				<div class="list_enddate">END: 2020-01-01</div>
				<div class="profile">
					<div class="profile_image">
						<i id="usericon" class="fas fa-user-circle"></i>
					</div>
					<div class="id">myroutine</div>
					<div class="support">응원수: 20</div>
				</div>
			</div>
			
			<div class="original-content">
				<div class="list_name">
				신나게 RUN! 데일리 20분 러닝!<br>[2주 5회]
				</div>
				<div class="list_content">20분동안 속도상관없이 달리기챌린지다.20분동안 속도상관없이 달리기챌린지다.</div>
				<div class="list_startdate">START: 2020-01-01</div>
				<div class="list_enddate">END: 2020-01-01</div>
				<div class="profile">
					<div class="profile_image">
						<i id="usericon" class="fas fa-user-circle"></i>
					</div>
					<div class="id">myroutine</div>
					<div class="support">응원수: 20</div>
				</div>
			</div>
			
			
		</div>
		<div class="challenge-list-footer">
			<button type="button" class="btn btn-primary" 
               onclick="location.href='/';">글쓰기</button>
		</div>
		<div class="pagebar">
        	 ${pagebar}
      	</div>
      
   </div>  
</div>
   
<script>
   
</script>