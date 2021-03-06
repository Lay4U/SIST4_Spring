<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- views > myroutine.jsp -->
<div class="container">


	<h1 class="page-header">λ§μ΄λ£¨ν΄ π</h1>

	<!-- <div id="my-profile">
		<i id="my-photo" class="fas fa-user-circle"></i>
		<ul>
			<li>μ¬μ©μ:&nbsp;&nbsp;<span>${dto.name}</span></li>
			<li>λ£¨ν΄ μμν μ§, <span class="font-strong">${dto.regdate}</span>μΌ
			</li>
			<li>μκΈ°μκ°:&nbsp;&nbsp;<span>${dto.selfIntro}</span></li>
		</ul>
	</div> -->
	
	<div id="my-profile" style=" display:flex;">
         <img style="width:94px;" src="/routinemaker/resources/images/user.jpg"/>
      <ul style="padding-top:15px;">
         <li>μ¬μ©μ:&nbsp;&nbsp;<span>${dto.name}</span></li>
         <li>λ£¨ν΄ μμν μ§, <span class="font-strong">${dto.regdate}</span>μΌ
         </li>
         <li>μκΈ°μκ°:&nbsp;&nbsp;<span>${dto.selfIntro}</span></li>
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
					<span>νμνν°</span> 
					<span> 
					<i class="fas fa-sun"></i> 
					<i class="fas fa-cloud-sun"></i> 
					<i class="fas fa-moon"></i>
					</span>
				</span>
				<input type="button" id="numberchange" class="btn btn-default" name="numberchange" value="λ£¨ν΄μμλ³κ²½">
			</span>
		</div>

		<table class="table table-bordered" id="my-table">
			<tr>
				<th class="tr20">λ²νΈ</th>
				<th class="tr45">νλ§</th>
				<th class="tr250">μκ°/μν©</th>
				<th class="tr250">λ£¨ν΄λͺ</th>
				
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
			
			
			
				<th class="tr280">3μ£Όμ°¨ λ£¨ν΄νκ³ </th>
			</tr>

			<c:if test="${empty rdto}">
				<c:forEach items="${bdto}" var="dto" >
				<tr>
					<td>${dto.rnum}</td>
					<td>${dto.theme}</td>
					<td>${dto.state}</td>
					<td><a href="#routineedit" class="rountinename" data-toggle="modal" data-target="#routineedit">${dto.name}</a></td>
					<td>β</td>
					<td>β</td>
					<td>β</td>
					<td>β</td>
					<td>β</td>
					<td>β</td>
					<td>β</td>
					<td>
						<form method="POST">
							<!--  μμ΄μμ€νΌνκ·Έκ΅¬ν -->
							<input type="text" class="weekdiary"
								placeholder="1μ£ΌμΌ μ§ν λλμ μ μ μ΄λ³΄μΈμ:)" style="width: 250px;"
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
					<td><a href="#routineedit" class="rountinename" data-toggle="modal" data-target="#routineedit">${dto.name}</a></td>
					<td>β</td>
					<td>β</td>
					<td>β</td>
					<td>β</td>
					<td>β</td>
					<td>β</td>
					<td>β</td>
					<td>
						<form method="POST">
							<!--  μμ΄μμ€νΌνκ·Έκ΅¬ν -->
							<input type="text" class="weekdiary"
								placeholder="1μ£ΌμΌ μ§ν λλμ μ μ μ΄λ³΄μΈμ:)" style="width: 250px;"
								value="${dto.weekdiary}">
						</form>
					</td>
				</tr>
			</c:forEach> 
			</c:if>	
		
		</table>

		<button type="button" data-toggle="modal" data-target="#routineplus"
			class="btn btn-success">λ£¨ν΄μΆκ°νκΈ°</button>
		<button type="button" data-toggle="modal" data-target="#bookroutine"
			class="btn btn-default" > μμ½λ£¨ν΄νμΈ</button>
				

	<!-- λ£¨ν΄ μΆκ°νκΈ° Modal -->
	<form method="POST" action="/routinemaker/myroutine/routineplus.action">
		<div class="modal fade" id="routineplus" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
					
					
						<h5 class="modal-title" id="staticBackdropLabel"
							style="text-align: center; font-size: 1.5em;">λ£¨ν΄ μΆκ°νκΈ°π</h5>

						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span> <br>
						</button>
					</div>
					<div class="modal-body">

						<table class="table table-bordered" id="routineplus">
							<tr>
								<th>λ£¨ν΄λͺ</th>
								<td><input type="text" name="name" class="tr300 height30"></td>
							</tr>
							<tr>
								<th>νμνν°</th>
								<td>
									<select id="time" name="time" class="tr100 height30">
										<option value="μμΉ¨">μμΉ¨</option>
										<option value="μ€ν">μ€ν</option>
										<option value="μ λ">μ λ</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>μν©/μκ°</th>
								<td><input type="text" name="state" 
								class="tr300 height30"></td>
							</tr>
							<tr>
								<th>μλμ€μ </th>
								<td>
								<label class="switch"> 
								<input type="checkbox" name="alarm" id="alarmset">
								<span class="slider round"></span>
								</label>
									<p class="ap">OFF</p>
									<p class="ap" style="display: none;">ON</p></td>
							</tr>
							<tr>
								<th>λ£¨ν΄λ°λ³΅μ£ΌκΈ°</th>
								<td>
								<label class="switch">
								<input type="checkbox" name="repeat"
										id="routineset"> <span class="slider round"></span>
								</label>
									<p class="rp">OFF</p>
									<p class="rp" style="display: none;">ON</p></td>
							</tr>
							<tr>
								<th>νλ§</th>
								<td><select id="theme" name="theme" class="tr100 height30">
										<option value="λͺ¨λλ£¨ν΄">λͺ¨λλ£¨ν΄</option>
										<option value="μ λλ£¨ν΄">μ λλ£¨ν΄</option>
										<option value="κ±΄κ°">κ±΄κ°</option>
										<option value="μμ°μ±">μμ°μ±</option>
										<option value="μνμΌμ΄">μνμΌμ΄</option>
										<option value="μν">μν</option>
										<option value="μ¬μ ">μ¬μ </option>
										<option value="κ΄κ³">κ΄κ³</option>
										<option value="μ±μ₯">μ±μ₯</option>
										<option value="κ³΅λΆ">κ³΅λΆ</option>
										<option value="κ²½μ ">κ²½μ </option>
										<option value="κΈ°ν">κΈ°ν</option>
								</select></td>
							</tr>
							<tr>
								<th>ν¬λ§μμμΌ</th>
								<td><input type="date" name="startDate" id=""></td>
							</tr>
						</table>

					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">μ·¨μ</button>
						<button type="submit" class="btn btn-primary">νμΈ</button>
					</div>
				</div>
			</div>
		</div>
		<!-- λͺ¨λ¬ -->
	</form>
	
	
	
	
	<!-- μμ½λ£¨ν΄ νμΈνκΈ° -->
	<div class="modal fade" id="bookroutine" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel"
							style="text-align: center; font-size: 1.5em;">μμ½λ£¨ν΄ λͺ©λ‘π</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span> <br>
						</button>
					</div>
					<div class="modal-body">

						<table class="table table-bordered" id="routineplus">
							<tr>
								<th>μμλ μ§</th>
								<th>λ£¨ν΄λͺ</th>
							</tr>
						<c:forEach items="${futuredto}" var="dto">	
							<tr>
								<td>${dto.startdate}</td>
								<td>${dto.name}</td>
							</tr>
						</c:forEach>
							
						</table>

					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-success btn-block"
							data-dismiss="modal">νμΈ</button>
					</div>
				</div>
			</div>
		</div>
		<!-- λͺ¨λ¬ -->	
		
		

	<!-- λ£¨ν΄ μμ νκΈ° Modal -->
	<form method="POST" action="/routinemaker/myroutine/routineplus.action">
		<div class="modal fade" id="routineedit" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel"
							style="text-align: center; font-size: 1.5em;">λ£¨ν΄ μμ νκΈ°π</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span> <br>
						</button>
					</div>
					<div class="modal-body">

						<table class="table table-bordered" id="routineplus">
							<tr>
								<th>λ£¨ν΄λͺ</th>
								<td><input type="text" name="name" class="tr300 height30" value="${rdto[0].name}"></td>
							</tr>
							<tr>
								<th>νμνν°</th>
								<td>
									<select id="time" name="time" class="tr100 height30" value="${rdto[4].time}">
										<option value="μμΉ¨">μμΉ¨</option>
										<option value="μ€ν">μ€ν</option>
										<option value="μ λ">μ λ</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>μν©/μκ°</th>
								<td><input type="text" name="state" class="tr300 height30" value="${rdto[2].state}"></td>
							</tr>
							<tr>
								<th>μλμ€μ </th>
								<td>
								<label class="switch"> 
								<input type="checkbox" name="alarm" id="alarmset">
								<span class="slider round"></span>
								</label>
									<p class="ap">OFF</p>
									<p class="ap" style="display: none;">ON</p></td>
							</tr>
							<tr>
								<th>λ£¨ν΄λ°λ³΅μ£ΌκΈ°</th>
								<td>
								<label class="switch">
								<input type="checkbox" name="repeat"
										id="routineset"> <span class="slider round"></span>
								</label>
									<p class="rp">OFF</p>
									<p class="rp" style="display: none;">ON</p></td>
							</tr>
							<tr>
								<th>νλ§</th>
								<td><select id="theme" name="theme" class="tr100 height30" value="${rdto[1].theme}">
										<option value="λͺ¨λλ£¨ν΄">λͺ¨λλ£¨ν΄</option>
										<option value="μ λλ£¨ν΄">μ λλ£¨ν΄</option>
										<option value="κ±΄κ°">κ±΄κ°</option>
										<option value="μμ°μ±">μμ°μ±</option>
										<option value="μνμΌμ΄">μνμΌμ΄</option>
										<option value="μν">μν</option>
										<option value="μ¬μ ">μ¬μ </option>
										<option value="κ΄κ³">κ΄κ³</option>
										<option value="μ±μ₯">μ±μ₯</option>
										<option value="κ³΅λΆ">κ³΅λΆ</option>
										<option value="κ²½μ ">κ²½μ </option>
										<option value="κΈ°ν">κΈ°ν</option>
								</select></td>
							</tr>
							<tr>
								<th>ν¬λ§μμμΌ</th>
								<td><input type="date" name="startDate" id=""></td>
							</tr>
						</table>

					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">μ·¨μ</button>
						<button type="submit" class="btn btn-primary">νμΈ</button>
					</div>
				</div>
			</div>
		</div><!-- λͺ¨λ¬ -->
	</form>



	</div>

	<hr>

	<div id="my-diary">

		<div id="diary-date">
			<div class="diary-header" style="width: 200px;">λ°μΌλ¦¬νκ³  β¨</div>
			<div id="diary-weekdate">
				<!-- <div class="weekdate-date" onclick="open(2021-08-30)">
				<input type="radio" name="date" class="weekdate-date btn1" id="id_btn_01" /> 
				<label for="id_btn_01">
					<div>30</div>
					<div>μ</div>
				</label>
				</div>
				<div class="weekdate-date" onclick="open(2021-08-31)">
				<input type="radio" name="date" class="btn1" id="id_btn_02" /> <label for="id_btn_02">
					<div>31</div>
					<div>ν</div>
				</label>
				</div>
				<div class="weekdate-date" onclick="open(2021-09-01)">
					<div>1</div>
					<div>μ</div>
				</div>
				<div class="weekdate-date" onclick="open(2021-09-02)">
					<div>2</div>
					<div>λͺ©</div>
				</div>
				<div class="weekdate-date" onclick="open(2021-09-03)" style="border: 1px solid purple; color: #8633C0;">
					<div>3</div>
					<div>κΈ</div>
				</div>
				<div class="weekdate-date" onclick="open(2021-09-04)">
					<div>4</div>
					<div>ν </div>
				</div>
				<div class="weekdate-date" style="border-style: none;" onclick="open(2021-09-05)">
					<div>5</div>
					<div>μΌ</div>
				</div> -->
				
				<input type="radio" name="date" class="btn1" id="id_btn_01" /> <label for="id_btn_01">30<span>(μ)</span></label>
            <input type="radio" name="date" class="btn1" id="id_btn_02" /> <label for="id_btn_02">31<span>(ν)</span></label>
            <input type="radio" name="date" class="btn1" id="id_btn_03" /> <label for="id_btn_03">1<span>(μ)</span></label>
            <input type="radio" name="date" class="btn1" id="id_btn_04" /> <label for="id_btn_04">2<span>(λͺ©)</span></label>
            <input type="radio" name="date" class="btn1" id="id_btn_05" checked/> <label for="id_btn_05">3<span>(κΈ)</span></label>
            <input type="radio" name="date" class="btn1" id="id_btn_06" disabled/> <label for="id_btn_06">4<span>(ν )</span></label>
            <input type="radio" name="date" class="btn1" id="id_btn_07" disabled/> <label for="id_btn_07">5<span>(μΌ)</span></label>
			
			
			</div>
		</div>

		<div class="diary-header margin-b20 button-left">
			<button class="btn btn-default">νκ³ κ΄λ¦¬</button>
		</div>
	
	<!-- λ€μ΄μ΄λ¦¬ μ°κΈ°κΈ°λ₯ -->
	<form id="formdiary">
		<div>
			<div class="diary-header margin-b20" id="">μ€μ€λ‘μκ² νΌλλ°±!</div>
			<div>
				<textarea class="diary-text margin-b40" rows="" cols=""
					placeholder="μ€λ λ£¨ν΄μ μ΄λ λμ?"></textarea>
			</div>
		</div>
		<div>
			<div class="diary-header margin-b20">λμκ² νλ§λ!</div>
			<div>
				<textarea class="diary-text margin-b20" placeholder="μκ³ ν λμκ² νλ§λ!" 
				id="diarytxt"></textarea>
			</div>
		</div>
		<div class="button-left">
			<button class="btn btn-success">μ μ₯νκΈ°</button>
		</div>
	</form> <!-- λ€μ΄μ΄λ¦¬μ μ₯ -->
  </div>
</div>

<script>

	//dateκ° μλ ₯μ -> μΌμ£ΌμΌ μλμ μ©
	$('#my-calendar').change(function() {

				var date = $('#my-calendar').val(); //κ΅¬νκ³ μ νλ λ μ§ μ€μ 
				console.log(date); //2021-09-01
				$('#my-calendar').val(date);
				
				get_Date(date); //νΉμ μΌμμ ν΄λΉ Weekμ μμμΌκ³Ό μΌμμΌμ κ΅¬νλ€.	
				function get_Date(obj) {
					
					var year = obj.substring(0, 4); //2021
					var month = obj.substring(5, 7); //08
					var day = obj.substring(8); //31

					var vn_day1 = new Date(year, month - 1, day);
					console.log(vn_day1); //Tue Sep 07 2021

					var i = vn_day1.getDay(); //νμ¬ μμΌμ κ΅¬νλ€.( 0:μΌμμΌ, 1:μμμΌ, 2:νμμΌ, 3:μμμΌ, 4:λͺ©μμΌ, 5:κΈμμΌ, 6:ν μμΌ )
					console.log(i); //2
					
					if ((i > 0) && (i < 7)) { //νμ¬ μμΌμ΄ μ~ν  μΌλ
						aa = 1 - i; //1-2=-1
						bb = 7 - i; //7-2=5
						var Cal_st = new Date(vn_day1.getYear(), vn_day1.getMonth(), vn_day1.getDate() + aa);
						var Cal_en = new Date(vn_day1.getYear(), vn_day1.getMonth(), vn_day1.getDate() + bb);
						
					} else if (i == 0) { //νμ¬ μμΌμ΄ μΌμμΌμΌλ
						aa = i-7; //-7
						bb = i; //0
						var Cal_st = new Date(vn_day1.getYear(), vn_day1.getMonth(), vn_day1.getDate() + aa);
						var Cal_en = new Date(vn_day1.getYear(), vn_day1.getMonth(), vn_day1.getDate() + bb);

					}

					//λ μ§νμνμ μ²«λ²μ§Έ 
					var st_day = "2021-" + (Cal_st.getMonth() + 1) + "-" + Cal_st.getDate();
					var en_day = "2021-" + (Cal_en.getMonth() + 1) + "-" + Cal_en.getDate();

					
					//document.write("μλ ₯λ°μ λ μ§ : " + obj + "<BR>");
					//document.write("μ΄λ²μ£Ό μμμΌ(μ) : " + st_day + "<BR>");
					//document.write("μ΄λ²μ£Ό μ’λ£μΌ(μΌ) : " + en_day + "<BR>");
					$('#monday').text(st_day);
					$('#sunday').text(en_day);
					$('#my-calendar').text(obj);
					
					var sdate = $('#monday').text();
					var fdate = $('#sunday').text();
					var now = $('#my-calendar').val();
					
					function submit() {

			         var form = document.createElement("form");

			         form.setAttribute("charset", "UTF-8");
			         form.setAttribute("method", "Post");  //Post λ°©μ
			         form.setAttribute("action", "/routinemaker/myroutine/myroutine.action"); //μμ²­ λ³΄λΌ μ£Όμ
			        
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


	//λ£¨ν΄μΆκ°(μλ,λ°λ³΅μ£ΌκΈ° ONν κΈ)
	$('#alarmset').click(function() {
		$('.ap').toggle();
	});
	$('#routineset').click(function() {
		$('.rp').toggle();
	});
	
	
	//λ€μ΄μ΄λ¦¬μ‘°ν
	$('#id_btn_01').click(function() {
		
		$.ajax({
			type:'GET',
			url: 'http://localhost:8090/routinemaker/myroutine/dailydiary.action?date=' + '2021-08-30',
			dataType: 'json',
			success: function(obj) {
				//alert(obj.content);
				$('#diarytxt').text(obj.content);
			},
			error: function(a,b,c) {
				console.log(a,b,c);
			}
		});
	});
	
	$('#id_btn_02').click(function() {
		
		$.ajax({
			type:'GET',
			url: 'http://localhost:8090/routinemaker/myroutine/dailydiary.action?date=' + '2021-08-31',
			dataType: 'json',
			success: function(obj) {
				//alert(obj.content);
				$('#diarytxt').text(obj.content);
			},
			error: function(a,b,c) {
				console.log(a,b,c);
			}
		});
	});
	
	$('#id_btn_03').click(function() {
		
		$.ajax({
			type:'GET',
			url: 'http://localhost:8090/routinemaker/myroutine/dailydiary.action?date=' + '2021-09-01',
			dataType: 'json',
			success: function(obj) {
				//alert(obj.content);
				$('#diarytxt').text(obj.content);
			},
			error: function(a,b,c) {
				console.log(a,b,c);
			}
		});
	});
	
	$('#id_btn_04').click(function() {
		
		$.ajax({
			type:'GET',
			url: 'http://localhost:8090/routinemaker/myroutine/dailydiary.action?date=' + '2021-09-02',
			dataType: 'json',
			success: function(obj) {
				//alert(obj.content);
				$('#diarytxt').text(obj.content);
			},
			error: function(a,b,c) {
				console.log(a,b,c);
			}
		});
	});
	
	
	//0903λ΄μ© μ΄κΈ°ν
	   $('#id_btn_05').click(function() {
	      
	      $('#diarytxt').text('');
	      
	       $.ajax({
	         type:'GET',
	         url: 'http://localhost:8090/routinemaker/myroutine/dailydiary.action?date=' + '2021-09-03',
	         dataType: 'json',
	         success: function(obj) {
	            //alert(obj.content);
	            $('#diarytxt').text(obj.content);
	         },
	         error: function(a,b,c) {
	            console.log(a,b,c);
	         }
	      });
	   });
	
	
</script>
