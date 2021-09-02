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
			<span id="my-date1">
			<span>
				<c:if test="${empty sdate}">
				<span id="monday">2021-08-31</span>
				</c:if>
				<c:if test="${not empty sdate}">
				<span id="monday">${sdate}</span>
				</c:if>
				
				&nbsp;~&nbsp;
				
				<c:if test="${empty fdate}">
				<span id="sunday">2021-09-05</span>
				</c:if>
				<c:if test="${not empty fdate}">
				<span id="sunday">${fdate}</span>
				</c:if>
				
			</span>
			</span> 
			
			<c:if test="${empty now}">
				<input type="date" id="my-calendar" class="btn btn-xs" name="my-calendar" value="2021-09-03">
			</c:if>
			<c:if test="${not empty now}">
				<input type="date" id="my-calendar" class="btn btn-xs" name="my-calendar" value="${now}">
			</c:if>
		
			
			<span id="my-date2">
				<span id="my-timefilter">
					<span>타임필터</span> 
					<span> 
					<i class="fas fa-sun"></i> 
					<i class="fas fa-cloud-sun"></i> 
					<i class="fas fa-moon"></i>
					</span>
				</span>
				<input type="button" id="numberchange" class="btn btn-default" name="numberchange" value="루틴순서변경">
			</span>
		</div>

		<table class="table table-bordered" id="my-table">
			<tr>
				<th class="tr30">번호</th>
				<th>테마</th>
				<th>시간/상황</th>
				<th>루틴명</th>
				
			<c:if test="${empty rdto}">
				<th class="tr20">8/30</th>
				<th class="tr20">8/31</th>
				<th class="tr20">9/1</th>
				<th class="tr20">9/2</th>
				<th class="tr20">9/3</th>
				<th class="tr20">9/4</th>
				<th class="tr20">9/5</th>
			</c:if>
			
			<c:if test="${not empty rdto}">
				<th class="tr20">8/30</th>
				<th class="tr20">8/31</th>
				<th class="tr20">9/1</th>
				<th class="tr20">9/2</th>
				<th class="tr20">9/3</th>
				<th class="tr20">9/4</th>
				<th class="tr20">9/5</th>
			</c:if>
			
			
			
				<th>3주차 루틴회고</th>
			</tr>

			<c:if test="${empty rdto}">
				<c:forEach items="${bdto}" var="dto" >
				<tr>
					<td>${dto.rnum}</td>
					<td>${dto.theme}</td>
					<td>${dto.state}</td>
					<td><a href="#!" class="rountinename" data-toggle="modal" data-target="#routineedit">${dto.name}</a></td>
					<td>★</td>
					<td>★</td>
					<td>★</td>
					<td>★</td>
					<td>☆</td>
					<td>☆</td>
					<td>☆</td>
					<td>
						<form method="POST">
							<!--  에이작스폼태그구현 -->
							<input type="text" class="weekdiary"
								placeholder="1주일 진행 느낀점을 적어보세요:)" style="width: 250px;"
								value="${dto.weekdiary}">
						</form>
					</td>
				</tr>
			</c:forEach>
			</c:if>
			
			<c:if test="${not empty rdto}">
			<c:forEach items="${rdto}" var="dto" >
				<tr>
					<td>${dto.rnum}</td>
					<td>${dto.theme}</td>
					<td>${dto.state}</td>
					<td><a href="#!" class="rountinename" data-toggle="modal" data-target="#routineedit">${dto.name}</a></td>
					<td>★</td>
					<td>★</td>
					<td>★</td>
					<td>★</td>
					<td>☆</td>
					<td>☆</td>
					<td>☆</td>
					<td>
						<form method="POST">
							<!--  에이작스폼태그구현 -->
							<input type="text" class="weekdiary"
								placeholder="1주일 진행 느낀점을 적어보세요:)" style="width: 250px;"
								value="${dto.weekdiary}">
						</form>
					</td>
				</tr>
			</c:forEach> 
			</c:if>	
		
		</table>

		<button type="button" data-toggle="modal" data-target="#routineplus"
			class="btn btn-success">루틴추가하기</button>
		<button type="button" data-toggle="modal" data-target="#bookroutine"
			class="btn btn-default"> 예약루틴확인</button>
				

	<!-- 루틴 추가하기 Modal -->
	<form method="POST" action="/routinemaker/myroutine/routineplus.action">
		<div class="modal fade" id="routineplus" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel"
							style="text-align: center; font-size: 1.5em;">루틴 추가하기💗</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span> <br>
						</button>
					</div>
					<div class="modal-body">

						<table class="table table-bordered" id="routineplus">
							<tr>
								<th>루틴명</th>
								<td><input type="text" name="name" class="tr300 height30"></td>
							</tr>
							<tr>
								<th>타임필터</th>
								<td>
									<select id="time" name="time" class="tr100 height30">
										<option value="아침">아침</option>
										<option value="오후">오후</option>
										<option value="저녁">저녁</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>상황/시간</th>
								<td><input type="text" name="state" class="tr300 height30"></td>
							</tr>
							<tr>
								<th>알람설정</th>
								<td>
								<label class="switch"> 
								<input type="checkbox" name="alarm" id="alarmset">
								<span class="slider round"></span>
								</label>
									<p class="ap">OFF</p>
									<p class="ap" style="display: none;">ON</p></td>
							</tr>
							<tr>
								<th>루틴반복주기</th>
								<td>
								<label class="switch">
								<input type="checkbox" name="repeat"
										id="routineset"> <span class="slider round"></span>
								</label>
									<p class="rp">OFF</p>
									<p class="rp" style="display: none;">ON</p></td>
							</tr>
							<tr>
								<th>테마</th>
								<td><select id="theme" name="theme" class="tr100 height30">
										<option value="모닝루틴">모닝루틴</option>
										<option value="저녁루틴">저녁루틴</option>
										<option value="건강">건강</option>
										<option value="생산성">생산성</option>
										<option value="셀프케어">셀프케어</option>
										<option value="생활">생활</option>
										<option value="여유">여유</option>
										<option value="관계">관계</option>
										<option value="성장">성장</option>
										<option value="공부">공부</option>
										<option value="경제">경제</option>
										<option value="기타">기타</option>
								</select></td>
							</tr>
							<tr>
								<th>희망시작일</th>
								<td><input type="date" name="startDate" id=""></td>
							</tr>
						</table>

					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
						<button type="submit" class="btn btn-primary">확인</button>
					</div>
				</div>
			</div>
		</div><!-- 모달 -->
	</form>
	
	<!-- 예약루틴 확인하기 -->
	<div class="modal fade" id="bookroutine" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel"
							style="text-align: center; font-size: 1.5em;">예약루틴 목록😃</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span> <br>
						</button>
					</div>
					<div class="modal-body">

						<table class="table table-bordered" id="routineplus">
							<tr>
								<th>시작날짜</th>
								<th>루틴명</th>
							</tr>
							<tr>
								<td>2021-09-15</td>
								<td>물마시기</td>
							</tr>
						</table>

					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-success"
							data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div><!-- 모달 -->	

	<!-- 루틴 수정하기 Modal -->
	<form method="POST" action="/routinemaker/myroutine/routineplus.action">
		<div class="modal fade" id="routineedit" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel"
							style="text-align: center; font-size: 1.5em;">루틴 수정하기💗</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span> <br>
						</button>
					</div>
					<div class="modal-body">

						<table class="table table-bordered" id="routineplus">
							<tr>
								<th>루틴명</th>
								<td><input type="text" name="name" class="tr300 height30" value="${rdto[0].name}"></td>
							</tr>
							<tr>
								<th>타임필터</th>
								<td>
									<select id="time" name="time" class="tr100 height30" value="${rdto[4].time}">
										<option value="아침">아침</option>
										<option value="오후">오후</option>
										<option value="저녁">저녁</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>상황/시간</th>
								<td><input type="text" name="state" class="tr300 height30" value="${rdto[2].state}"></td>
							</tr>
							<tr>
								<th>알람설정</th>
								<td>
								<label class="switch"> 
								<input type="checkbox" name="alarm" id="alarmset">
								<span class="slider round"></span>
								</label>
									<p class="ap">OFF</p>
									<p class="ap" style="display: none;">ON</p></td>
							</tr>
							<tr>
								<th>루틴반복주기</th>
								<td>
								<label class="switch">
								<input type="checkbox" name="repeat"
										id="routineset"> <span class="slider round"></span>
								</label>
									<p class="rp">OFF</p>
									<p class="rp" style="display: none;">ON</p></td>
							</tr>
							<tr>
								<th>테마</th>
								<td><select id="theme" name="theme" class="tr100 height30" value="${rdto[1].theme}">
										<option value="모닝루틴">모닝루틴</option>
										<option value="저녁루틴">저녁루틴</option>
										<option value="건강">건강</option>
										<option value="생산성">생산성</option>
										<option value="셀프케어">셀프케어</option>
										<option value="생활">생활</option>
										<option value="여유">여유</option>
										<option value="관계">관계</option>
										<option value="성장">성장</option>
										<option value="공부">공부</option>
										<option value="경제">경제</option>
										<option value="기타">기타</option>
								</select></td>
							</tr>
							<tr>
								<th>희망시작일</th>
								<td><input type="date" name="startDate" id=""></td>
							</tr>
						</table>

					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
						<button type="submit" class="btn btn-primary">확인</button>
					</div>
				</div>
			</div>
		</div><!-- 모달 -->
	</form>



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
	

	//date값 입력시 -> 일주일 자동적용
	$('#my-calendar').change(function() {

				var date = $('#my-calendar').val(); //구하고자 하는 날짜 설정
				console.log(date); //2021-09-01
				$('#my-calendar').val(date);
				
				get_Date(date); //특정일자의 해당 Week의 월요일과 일요일을 구한다.	
				function get_Date(obj) {
					
					var year = obj.substring(0, 4); //2021
					var month = obj.substring(5, 7); //08
					var day = obj.substring(8); //31

					var vn_day1 = new Date(year, month - 1, day);
					console.log(vn_day1); //Tue Sep 07 2021

					var i = vn_day1.getDay(); //현재 요일을 구한다.( 0:일요일, 1:월요일, 2:화요일, 3:수요일, 4:목요일, 5:금요일, 6:토요일 )
					console.log(i); //2
					
					if ((i > 0) && (i < 7)) { //현재 요일이 월~토 일때
						aa = 1 - i; //1-2=-1
						bb = 7 - i; //7-2=5
						var Cal_st = new Date(vn_day1.getYear(), vn_day1.getMonth(), vn_day1.getDate() + aa);
						var Cal_en = new Date(vn_day1.getYear(), vn_day1.getMonth(), vn_day1.getDate() + bb);
						
					} else if (i == 0) { //현재 요일이 일요일일때
						aa = i-7; //-7
						bb = i; //0
						var Cal_st = new Date(vn_day1.getYear(), vn_day1.getMonth(), vn_day1.getDate() + aa);
						var Cal_en = new Date(vn_day1.getYear(), vn_day1.getMonth(), vn_day1.getDate() + bb);

					}

					//날짜표시형식 첫번째 
					var st_day = "2021-" + (Cal_st.getMonth() + 1) + "-" + Cal_st.getDate();
					var en_day = "2021-" + (Cal_en.getMonth() + 1) + "-" + Cal_en.getDate();

					
					//document.write("입력받은 날짜 : " + obj + "<BR>");
					//document.write("이번주 시작일(월) : " + st_day + "<BR>");
					//document.write("이번주 종료일(일) : " + en_day + "<BR>");
					$('#monday').text(st_day);
					$('#sunday').text(en_day);
					$('#my-calendar').text(obj);
					
					var sdate = $('#monday').text();
					var fdate = $('#sunday').text();
					var now = $('#my-calendar').val();
					
					function submit() {

			         var form = document.createElement("form");

			         form.setAttribute("charset", "UTF-8");
			         form.setAttribute("method", "Post");  //Post 방식
			         form.setAttribute("action", "/routinemaker/myroutine/myroutine.action"); //요청 보낼 주소
			        
			         var hiddenField = document.createElement("input");
			         hiddenField.setAttribute("type", "hidden");
			         hiddenField.setAttribute("name", "sdate");
			         hiddenField.setAttribute("value", sdate);
			         form.appendChild(hiddenField);

			         hiddenField = document.createElement("input");
			         hiddenField.setAttribute("type", "hidden");
			         hiddenField.setAttribute("name", "fdate");
			         hiddenField.setAttribute("value", fdate);
			         form.appendChild(hiddenField);
			         
			         hiddenField = document.createElement("input");
			         hiddenField.setAttribute("type", "hidden");
			         hiddenField.setAttribute("name", "now");
			         hiddenField.setAttribute("value", now);
			         form.appendChild(hiddenField);

			         document.body.appendChild(form);

			         form.submit();

					 }//submit
					 
					submit();
					
				}
				
					
			});
	
	
	

	//루틴추가(알람,반복주기 ON토글)
	$('#alarmset').click(function() {
		$('.ap').toggle();
	});
	$('#routineset').click(function() {
		$('.rp').toggle();
	});
</script>
