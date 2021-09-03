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
	<!-- views > recommend > routinesetview.jsp  -->
	<div class="container">
		<h1 class="page-header">
			인생을 바꾸는 미라클 모닝☀ <br> <small><mark>
					<a href='#'>#모닝루틴</a>
				</mark></small>
		</h1>

		<div class="img-container-routinesetview">
			<img class="image"
				src="/routinemaker/resources/images/miraclemorning.jpg" />
		</div>
		<hr>

		<div class="container-title">인생을 바꾸는 미라클 모닝☀</div>


		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>


		<div class="container-content">
			한 해의 시작은 중요하게 여기면서, 왜 하루의 시작은 알람을 미루는 것으로 시작하나요?
			<미라클 모닝> 의 저자 할 엘로드는 아침을 기분 좋게 시작하는 것이 하루의 생산성과 성공을 결정한다고 말하며,
			아침을 기분 좋게 만드는 여섯가지 아침 습관을 제안합니다.☀ 
		</div>
		
		
		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>


		<div class="container-title">⏱ 소요시간</div>


		<div class="container-padding-horizen"></div>

		<div class="container-content">👉 최소 5 분부터 길게는 10분까지 필요해요 : )
			미라클 모닝의 각 단계를 얼마나 길게 하는 가에 따라 소요시간이 달라질거예요. 👉 처음이라면 각 단계를 3분 이내로
			수행하고, 점점 습관이 되면 시간을 늘려보는걸 추천합니다! 👉 아래 루틴을 모두 하지 않아도 괜찮습니다. 순서도 내게 맞게
			조정해도 좋아요! 중요한 건 미라클 모닝의 모든 단계를 따라하는 게 아니라, 아침을 기분 좋게 시작하는 것에 있다는 것을
			잊지 마세요 : )</div>


		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>


		<div class="container-title">👍 추천루틴</div>

		<div class="container-padding-horizen"></div>

		<div class="container-content">
			<div id="table-routineset">
				<table class="table table-bordered">
					<tr>
						<td>오전 05:00 </td>
						<td>아침 05:00 기상 </td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td>눈 뜨자마자 물 한잔</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td>하루 5분 방정리 🧹</td>
						<td></td>
					</tr>
				</table>
			</div>
			
			<div class="container-padding-horizen"></div>

			<div id="content-routineset"><mark>☀ 아침 5:00 기상 미라클 모닝</mark><br> 루틴을 실천할 시간을
			정해주세요!<br>
			권장 시간은 05:00 이지만, 루티너님이 지킬 수 있는 시간으로 시작해서 서서히 당겨가는것을 추천드립니다!<br><br>
			<mark>눈 뜨자마자 물 한잔 🥛</mark><br>눈 뜨자마자 일어나서 마시는 물 한잔은, 입 속에 남아있는 위산을 씻어주고 세균도 어느 정도 제거해
			주는 역할을 한다고 합니다.<br>
			또한 신진대사에 도움을 줘 혈액순환을 원활히 하기 때문에 깨끗한 혈액 공급의 원천이 된다는 사실 알고 계시죠?<br>
			잠도 깨고 몸도 깨는 일석이조의 효과를 느껴보세요.<br><br><mark>하루 5분 방정리 🧹</mark><br> 왜 청소를 시간내서 하려고 할까요?<br>
			아칭메 일어나서 책상을 정리한다던가, 이부자리를 정리하는 등 가벼운 정리로도 하루를 상쾌하게 시작할 수 있어요 : )<br>아침
			외출시 입을 옷 정리 부터 천천히 시작해 보세요!</div>
		</div>



		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>
		
		
		<div class="container-title">💛 이런 분들이 좋아해요</div>

		<div class="container-padding-horizen"></div>

		<div class="container-content">* 인생을 바꾸는 거대한 도전을 하고 싶은 분 이라면 미라클
			모닝에 도전해봐요! 매일을 강력한 성취로 시작할 수 있어 삶을 변화시키는 에너지를 얻을 수 있어요. * 자기계발 할 시간이
			부족해 아침을 활용하고 싶은 분은 미라클 모닝으로 매일 30분~ 1시간의 자기계발시간을 확보할 수 있어요!</div>


		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>


		<div id="btn-routindadd">
			<button type="button" data-toggle="modal" data-target="#routineModal" class="btn btn-primary btn-lg btn-block">
			내 루틴에 추가하기</button>
		</div>
	</div>

	

	<!-- 루틴 추가하기 모달 -->
	<form method="POST" action="/routinemaker/myroutine/routineplus.action">
		<div class="modal fade" id="routineModal" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true" >
			<div class="modal-dialog" role="document">
			
				<div class="modal-content">
			
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel" 
								style="text-align:center; font-size: 1.5em;">내 루틴에 추가하기💗</h5>
						
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
							<br>
						</button>
					</div>
					
					<div class="modal-body">
						
						<table class="table table-bordered" id="routineplus">
							<tr>
								<th colspan="2" style="text-align:center;">
								<h4 class="modal-title1" id="routinename">인생을 바꾸는 미라클 모닝☀</h4>
								
								
								</th>
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
								<td><input type="text" "text" name="state" 
								class="tr300 height30" placeholder="ex) 운동 후, 아침 먹은 후"></td>
							</tr>
							<tr>
								<th>알람설정</th>
								<td><label class="switch">
								<input type="checkbox" id="alarmset">
								<span class="slider round"></span>
								</label>
									<p class="ap">OFF</p>
									<p class="ap" style="display: none;">ON</p></td>
							</tr>
							<tr>
								<th>하고싶은 이유</th>
								<td><input type="text" name="" id="" class="tr300 height30" placeholder="하고싶은 이유 ( 150자 이내 )"></td>
							</tr>
							<tr>
								<th>루틴반복주기</th>
								<td>
									<label class="switch">
										<input type="checkbox" name="repeat" id="routineset">
										<span class="slider round"></span>
									</label>
										<p class="rp">OFF</p>
										<p class="rp" style="display: none;">ON</p>
								</td>
							</tr>
							<tr>
								<th>테마</th>
								<td>
									<select id="theme" name="theme" class="tr100 height30">
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
										
									</select>
								</td>
							</tr>
							<tr>
								<th>희망시작일</th>
								<td><input type="date" name="startDate" id=""></td>
							</tr>
						</table>
					
					</div>
					
					<div class="modal-footer">
			          <button type="button" id="btnAdd" class="btn btn-primary">내 루틴에 추가하기</button>
			          <button type="button" class="btn btn-default" data-dismiss="modal">취소하기</button>
			        </div>
				</div>
			</div>
		</div>
	</form>

	







	<script>
	 $('#btnAdd').click(function(){
			
		 alert("루틴 추가 성공🎉");
		 	
	 });
	</script>
</body>
</html>