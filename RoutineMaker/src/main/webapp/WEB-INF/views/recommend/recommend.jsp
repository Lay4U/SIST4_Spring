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

	<!-- views > recommend.jsp -->

	<div class="container">
	
	
		<nav class="nav-recommend">
			<ul class="nav nav-tabs">
				<li role="presentation"><a href="/routinemaker/recommend/themebest.action">π νλ§λ³ λ£¨ν΄</a></li>
				<li role="presentation"><a href="/routinemaker/recommend/routineset.action">π λ£¨ν΄ μΈνΈ</a></li>
			</ul>
		</nav>
		
	
		<h1 class="page-header">
			μΆμ² λ£¨ν΄π
			<br><small>μνλ λ£¨ν΄μ ν΄λ¦­ν΄μ λ΄ νΌλλ‘ νΌκ° λ³΄μΈμ!</small>
		</h1>

	
		<div class="container-recommend">
		<h2 class="page-header">λ£¨ν΄ κ²μπ
			<br><small>μνλ λ£¨ν΄μ κ²μ ν΄ λ³΄μΈμ!</small>
		</h2>
			<div class="form-group">
				<select name="column" id="column"  class="form-control" >
						<option value="postTitle">μ΅μ </option>
						<option value="content">μ‘°νμ</option>
						<option value="nickName">μ’μμ</option> 
				</select>
					<input type="text" id="search1" class="form-control" 
							 placeholder="λ£¨ν΄μ κ²μνμΈμπ">
			
			<button type="submit" id="recommendbtn1" class="btn btn-default">κ²μνκΈ°</button>
			</div>
			<hr>
			
			<!-- κ²μ λ¦¬μ€νΈκ° λνλλ μμ­ -->
			<h3>λ£¨ν΄ κ²μ κ²°κ³Ό</h3>
			<div id="m1" class="alert alert-success">
				<table class="table table-border" style="border: 1px solid black;">
					<thead>
						<tr>
							<th>λ£¨ν΄λ²νΈ</th>
							<th>λ£¨ν΄λͺ</th>
							<th>λ£¨ν΄νλ§</th>
						</tr>
					</thead>
					<tbody id="tbody1">
					</tbody>
				</table>
			</div>
		
		
		</div>
		
		
		<div class="container-padding-vertical">
			
		</div>

		<div class="container-recommend">
			<h2 class="page-header">μ’ν© λ² μ€νΈ μμ<br><small>μ§κΈ λ£¨ν΄λ©μ΄μ»€μμ κ°μ₯ μΈκΈ°μλ λ£¨ν΄μ?π</small></h2>
		
			<div class="list-group list-group-recommend">
				<c:forEach var="dto" items="${bestRoutine}">
					<a href="#routineModal" data-toggle="modal" data-title="${dto.name}" 
					id="color${dto.routineseq}" class="list-group-item">${dto.routineseq}. ${dto.name}</a>
				</c:forEach>
			</div>
		</div>
		
	</div>



	<!-- λ£¨ν΄ μΆκ°νκΈ° λͺ¨λ¬ -->
	<form method="POST" action="/routinemaker/myroutine/routineplus.action">
		<div class="modal fade" id="routineModal" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true" >
			<div class="modal-dialog" role="document">
			
				<div class="modal-content">
			
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel" 
								style="text-align:center; font-size: 1.5em;">λ΄ λ£¨ν΄μ μΆκ°νκΈ°π</h5>
						
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
								<h4 class="modal-title1" id="routinename">${dto.name}</h4>
								
								
								</th>
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
								<td><input type="text" "text" name="state" 
								class="tr300 height30" placeholder="ex) μ΄λ ν, μμΉ¨ λ¨Ήμ ν"></td>
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
								<td><input type="date" name="startDate" id=""></td>
							</tr>
						</table>
					
					</div>
					
					<div class="modal-footer">
			          <button type="button" id="btnAdd" class="btn btn-primary">λ΄ λ£¨ν΄μ μΆκ°νκΈ°</button>
			          <button type="button" class="btn btn-default" data-dismiss="modal">μ·¨μνκΈ°</button>
			        </div>
				</div>
			</div>
		</div>
	</form>


	<script>
	
	
	//λͺ¨λ¬μ λ£¨ν΄ μ λͺ© λΆλ¬μ€κΈ°
		
		$('#routineModal').on('show.bs.modal', function (event) { 
    	  	var button = $(event.relatedTarget) // λͺ¨λ¬ μλμ°λ₯Ό μ€ννλ λ²νΌ
	    	var titleTxt = button.data('title') // λ²νΌμμ data-title κ°μ titleTxt λ³μμ μ μ₯
	    	var modal = $(this)
		    modal.find('.modal-title1').text(titleTxt) // λͺ¨λ¬μλμ°μμ .modal-titleμ μ°Ύμ titleTxt κ°μ μΉν
		 });
		
		
	

	$(function(){
        
		
		<c:forEach items="${bestRoutine}" var="dto">
	      
			num = ${dto.routineseq};
	       	num2 = num % 4;
	      
	       	 if (num2 == 0){
					$('#color${dto.routineseq}').addClass('list-group-item-success');
					//console.log('list-group-item-success');
				}else if(num2 == 1){
					$('#color${dto.routineseq}').addClass('list-group-item-info');
					//console.log('list-group-item-info');
				}else if (num2 == 2){
					$('#color${dto.routineseq}').addClass('list-group-item-warning');
					//console.log('list-group-item-warning');
				}else if (num2 == 3){
					$('#color${dto.routineseq}').addClass('list-group-item-danger');
					//console.log('list-group-item-danger');
				}
       	 
       	</c:forEach>
       
     });
	
	
		  /* Ajax κ²μμ½λ */
		  /* νμ΄λΈμ μΆλ ₯νκΈ° */
				
		  $('#recommendbtn1').click(function() {
		         
		       $.ajax({
		        	 
		            type: 'GET',
		            url: '/routinemaker/recommend/m1.action',
		            data: 'keyword=' + $('#search1').val(),
		            dataType: 'json',
		            success: function(routineThemeList) {
		               
		            	//μ΄μ  κ²μ κ²°κ³Όλ¬Όμ μ­μ 
	                $('#tbody1').html('');
	                       
                		if( routineThemeList.length > 0 ) {
                				
               			 $(routineThemeList).each(function(index, item) {
            
                		 	 $('#tbody1').append('<tr><td>' + item.routineseq + '</td>' 
			                    		 			+ ', <td>'+ item.name + '</td>' 
			                    		 			+ ', <td> ' + item.theme + '</td></tr>');
	                	
	                	 });
	               			 
		               			 
		               		 } else { 

		      					  $('#tbody1').append('<tr><td style="text-align:center;" colspan="3">λ°μ΄ν°κ° μμ΅λλ€.</td></tr>') 
		                	 }
		            
		            
		            		},
		            		
	            		       error: function(a,b,c) {
					           console.log(a,b,c);
					               
					           }
					     });
					         
					 }); 
				 
	 
		 $('#btnAdd').click(function(){
			
			 alert("λ£¨ν΄ μΆκ° μ±κ³΅π");
			 	
		 });
		  
		  		
	 
	 
    
	</script>

</body>
</html>


















