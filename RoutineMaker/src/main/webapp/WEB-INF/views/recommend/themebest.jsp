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
			<a href="#routineModal" data-toggle="modal" id="colorroutine${dto.routineseq}"
					class="list-group-item">${dto.routineseq}.${dto.name}</a>
				<div class="container-padding-horizen"></div>
			</c:forEach>
		</div>


	</div>

	
	
		<!-- Modal -->
		<div class="modal fade" id="routineModal" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
			
				<div class="modal-content">
			
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel" style="text-align:center; font-size: 1.5em;">내 루틴에 퍼가기</h5>
						
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
							<br>
						</button>
					</div>
					<div class="modal-body">
						
						<table class="table table-bordered" id="routineplus">
							<tr>
								<th colspan="2"><input type="text" value="JavaScript 공부하기"></th>
								
							</tr>
							<tr>
								<th>타임필터</th>
								<td>
									<select id="time" name="time" class="tr100 height30">
										<option value="">☀아침</option>
										<option value="">☕점심</option>
										<option value="">🌙저녁</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>상황/시간</th>
								<td><input type="text" name="" id="" class="tr300 height30" placeholder="ex) 운동 후, 아침 먹은 후"></td>
							</tr>
							<tr>
								<th>알람설정</th>
								<td>on / off</td>
							</tr>
							<tr>
								<th>하고싶은 이유</th>
								<td><input type="text" name="" id="" class="tr300 height30" placeholder="하고싶은 이유 ( 150자 이내 )"></td>
							</tr>
							<tr>
								<th>루틴반복주기</th>
								<td>on / off</td>
							</tr>
							<tr>
								<th>테마</th>
								<td>
									<select id="theme" name="theme" class="tr100 height30">
										<option value="">모닝루틴</option>
										<option value="">저녁루틴</option>
										<option value="">건강</option>
										<option value="">생산성</option>
										<option value="">셀프케어</option>
										<option value="">생활</option>
										<option value="">여유</option>
										<option value="">관계</option>
										<option value="">성장</option>
										<option value="">공부</option>
										<option value="">경제</option>
										<option value="">경제</option>
										<option value="">기타</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>희망시작일</th>
								<td><input type="date" name="wishdate" id=""></td>
							</tr>
						
						</table>
					
					</div>
					<div class="modal-footer">
			          <button type="button" class="btn btn-primary">내 루틴에 퍼가기</button>
			          <button type="button" class="btn btn-default" data-dismiss="modal">취소하기</button>
			        </div>
				</div>
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











































