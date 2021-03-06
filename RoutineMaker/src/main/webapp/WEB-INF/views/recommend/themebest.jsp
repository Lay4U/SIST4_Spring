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
				<li role="presentation" class="active"><a href="#">π νλ§λ³
						λ£¨ν΄</a></li>
				<li role="presentation"><a
					href="/routinemaker/recommend/routineset.action">π λ£¨ν΄ μΈνΈ</a></li>
				<li role="presentation"><a
					href="/routinemaker/recommend/recommend.action">π μΆμ² λ£¨ν΄</a></li>
			</ul>
		</nav>


		<h1 class="page-header">
			νλ§λ³ λ£¨ν΄ <br> <small>κ΄μ¬ μλ νλ§μ μΈκΈ° λ£¨ν΄μ μμν΄ λ³΄μΈμπ</small>
		</h1>


		<div class="container-content" style="text-align: center;">
			<c:forEach var="rtdto" items="${routineTheme}">
				<button type="button" id="themecolor${rtdto.routineseq}"
					class="btn-routine btn routineTheme">${rtdto.theme}</button>
			</c:forEach>
		</div>




		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>
		<div class="container-padding-horizen"></div>


		<div id="routineResult" class="list-group list-group-recommend routinelist">
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
						<h5 class="modal-title" id="staticBackdropLabel" style="text-align:center; font-size:"1.5em;">λ΄ λ£¨ν΄μ νΌκ°κΈ°</h5>
						
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
							<br>
						</button>
					</div>
					<div class="modal-body">
						
						<table class="table table-bordered" id="routineplus">
							<tr>
								<th colspan="2"><input type="text" value="μμΉ¨ 05:00κΈ°μβ"></th>
								
							</tr>
							<tr>
								<th>νμνν°</th>
								<td>
									<select id="time" name="time" class="tr100 height30">
										<option value="">βμμΉ¨</option>
										<option value="">βμ μ¬</option>
										<option value="">πμ λ</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>μν©/μκ°</th>
								<td><input type="text" name="" id="" class="tr300 height30" placeholder="ex) μ΄λ ν, μμΉ¨ λ¨Ήμ ν"></td>
							</tr>
							<tr>
								<th>μλμ€μ </th>
								<td><label class="switch">
								<input type="checkbox" id="alarmset">
								<span class="slider round"></span>
								</label>
									<p class="ap">OFF</p>
									<p class="ap" style="display: none;">ON</p></td>
							</tr>
							<tr>
								<th>νκ³ μΆμ μ΄μ </th>
								<td><input type="text" name="" id="" class="tr300 height30" placeholder="νκ³ μΆμ μ΄μ  ( 150μ μ΄λ΄ )"></td>
							</tr>
							<tr>
								<th>λ£¨ν΄λ°λ³΅μ£ΌκΈ°</th>
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
								<th>νλ§</th>
								<td>
									<select id="theme" name="theme" class="tr100 height30">
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
									</select>
								</td>
							</tr>
							<tr>
								<th>ν¬λ§μμμΌ</th>
								<td><input type="date" name="wishdate" id=""></td>
							</tr>
						
						</table>
					
					</div>
					<div class="modal-footer">
			          <button type="button" class="btn btn-primary">λ΄ λ£¨ν΄μ νΌκ°κΈ°</button>
			          <button type="button" class="btn btn-default" data-dismiss="modal">μ·¨μνκΈ°</button>
			        </div>
				</div>
			</div>
		</div>





	<script>
		
	/* Ajaxλ‘ κ΅¬ν -> λ£¨ν΄ νλ§ ν΄λ¦­ μ , ν΄λΉ λ£¨ν΄ λΆλ¬μ€κΈ° */
	 
	$('.routineTheme').click(function(){
		
		let td = event.srcElement;
		let theme = $(td).text();
		
		  $.ajax({
	        	 
	            type: 'GET',
	            url: '/routinemaker/recommend/m2.action',
	            data: 'theme=' + theme , 
	            dataType: 'json',
	            success: function(routineList) {
	               
	            //μ΄μ  κ²μ κ²°κ³Όλ¬Όμ μ­μ 
              		$('#routineResult').html('');
                
          			if( routineList.length > 0 ) {
          				
         			 	$(routineList).each(function(index, item) {
         			 		
         			 		$('.routinelist').append('<a href="#routineModal"  data-toggle="modal" id="colorroutine${dto.routineseq}" class="list-group-item" style="background-color: RGB(217,237,247);">'
         			 		 + item.routineseq 
          		 			 + '.' 
          		 			 + item.name 
          		 			 + '</a><div class="container-padding-horizen"></div>');
         			 		
         			 	
         			 		
         			 		
         			 	});
         			 	
          			} else { 

	      				 $('.routinelist').append('<p>ν΄λΉ νλ§μ λ£¨ν΄μ΄ μμ΅λλ€.</p>'); 
	                }
	            
		            },
          			
	            
	            		 error: function(a,b,c) {
				           console.log(a,b,c);
				               
				           }
				     });
				         
				 }); 
				
		
		
		
		
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

		
		
	$(function(){
        
		
		<c:forEach items="${bestRoutine}" var="dto">
	      
			num = ${dto.routineseq};
	       	num2 = num % 4;
	      
	       	 if (num2 == 0){
					$('#colorroutine${dto.routineseq}').addClass('list-group-item-success');
					//console.log('list-group-item-success');
				}else if(num2 == 1){
					$('#colorroutine${dto.routineseq}').addClass('list-group-item-info');
					//console.log('list-group-item-info');
				}else if (num2 == 2){
					$('#colorroutine${dto.routineseq}').addClass('list-group-item-warning');
					//console.log('list-group-item-warning');
				}else if (num2 == 3){
					$('#colorroutine${dto.routineseq}').addClass('list-group-item-danger');
					//console.log('list-group-item-danger');
				}
       	 
       	</c:forEach>
       
     });	
	
	
	
	
	</script>

</body>
</html>











































