<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- views > myroutine.jsp -->
<div class="container">


	<h1 class="page-header">마이루틴</h1>

	<div id="my-profile">
		<i id="my-photo" class="fas fa-user-circle"></i>
		<ul>
			<li>사용자:&nbsp;&nbsp;<span>${dto.name}</span></li>
			<li>루틴 시작한 지, <span class="font-strong">${dto.regdate}</span>일
			</li>
			<li>자기소개:&nbsp;&nbsp;<span>${dto.selfIntro}</span></li>
		</ul>
	</div>

	<div id="myroutine">
		<div id="my-date">
			<span id="my-date1"> <span><span>2021-8-16</span>&nbsp;&nbsp;~&nbsp;&nbsp;<span>2021-8-22</span></span>
				<span id="my-calendar">▼<input type="date" class="btn btn-xs"
					name="my-calendar"></span>
			</span> <span id="my-date2">
				<div id="my-timefilter">
					<span>타임필터</span> <span> <i class="fas fa-sun"></i> <i
						class="fas fa-cloud-sun"></i> <i class="fas fa-moon"></i>
					</span>
				</div> <input type="button" id="numberchange" class="btn btn-default"
				name="numberchange" value="루틴순서변경">
			</span>
		</div>

		<table class="table table-bordered" id="my-table">
			<tr>
				<th class="tr45">번호</th>
				<th>테마</th>
				<th>시간/상황</th>
				<th>루틴명</th>
				<th class="tr20">8/16</th>
				<th class="tr20">8/17</th>
				<th class="tr20">8/18</th>
				<th class="tr20">8/19</th>
				<th class="tr20">8/20</th>
				<th class="tr20">8/21</th>
				<th class="tr20">8/22</th>
				<th>3주차 루틴회고</th>
			</tr>
			<tr>
				<td>1</td>
				<td>건강</td>
				<td>기상직후</td>
				<td><a href="#!">물마시기</a></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<form id="" method="POST">
						<!--  에이작스폼태그구현 -->
						<input type="text" id="weekdiary"
							placeholder="1주일 진행 느낀점을 적어보세요:)" style="width: 250px;">
					</form>
				</td>
			</tr>
		</table>

		<button type="button" data-toggle="modal" data-target="#routineplus"
			class="btn btn-success">루틴추가하기</button>
		<input type="button" id="bookroutine" class="btn btn-default"
			name="bookroutine" value="예약루틴확인">




		<!-- Modal -->
		<div class="modal fade" id="routineplus" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel" style="text-align:center; font-size: 1.5em;">루틴 추가하기</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
							<br>
						</button>
					</div>
					<div class="modal-body">
						
						<table class="table table-bordered" id="routineplus">
							<tr>
								<th>루틴명</th>
								<td><input type="text" name="" id="" class="tr300 height30"></td>
							</tr>
							<tr>
								<th>타임필터</th>
								<td>
									<select id="time" name="time" class="tr100 height30">
										<option value="">아침</option>
										<option value="">오후</option>
										<option value="">저녁</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>상황/시간</th>
								<td><input type="text" name="" id="" class="tr300 height30"></td>
							</tr>
							<tr>
								<th>알람설정</th>
								<td>on / off</td>
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
					<div class="modal-footer"  style="text-align:center;">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">확인</button>
					</div>
				</div>
			</div>
		</div>



	</div>

	<hr>

	<div id="my-diary">

		<div id="diary-date">
			<div class="diary-header" style="width: 100px;">데일리회고</div>
			<div id="diary-weekdate">
				<div class="weekdate-date">
					<div>24</div>
					<div>월</div>
				</div>
				<div class="weekdate-date">
					<div>25</div>
					<div>화</div>
				</div>
				<div class="weekdate-date">
					<div>26</div>
					<div>수</div>
				</div>
				<div class="weekdate-date">
					<div>27</div>
					<div>목</div>
				</div>
				<div class="weekdate-date">
					<div>28</div>
					<div>금</div>
				</div>
				<div class="weekdate-date">
					<div>29</div>
					<div>토</div>
				</div>
				<div class="weekdate-date" style="border-style: none;">
					<div>30</div>
					<div>일</div>
				</div>
			</div>
		</div>

		<div class="diary-header margin-b20 button-left">
			<button class="btn btn-default">회고관리</button>
		</div>
		<div>
			<div class="diary-header margin-b20">루틴회고1</div>
			<div>
				<textarea class="diary-text margin-b40" rows="" cols=""
					placeholder="오늘 루틴은 어땠나요?"></textarea>
			</div>
		</div>
		<div>
			<div class="diary-header margin-b20">루틴회고2</div>
			<div>
				<textarea class="diary-text margin-b20" rows="" cols=""
					placeholder="수고한 나에게 한마디!"></textarea>
			</div>
		</div>
		<div class="button-left">
			<button class="btn btn-success">저장하기</button>
		</div>


	</div>



</div>

<script>
	$('#my-calendar').click(function() {

		/*  <input type="date" class="btn btn-xs" name="my-calendar"> */
	});
</script>
