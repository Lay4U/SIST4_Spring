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
				<li role="presentation"><a href="/routinemaker/recommend/themebest.action">👉 테마별 루틴</a></li>
				<li role="presentation"><a href="/routinemaker/recommend/routineset.action">👉 루틴 세트</a></li>
			</ul>
		</nav>
		
	
		<h1 class="page-header">
			추천 루틴👍
			<br><small>원하는 루틴을 클릭해서 내 피드로 퍼가 보세요!</small>
		</h1>

	
		<div class="container-recommend">
		<h2 class="page-header">루틴 검색🔍
			<br><small>원하는 루틴을 검색 해 보세요!</small>
		</h2>
			<div class="form-group">
				<select name="column" id="column"  class="form-control" >
						<option value="postTitle">최신</option>
						<option value="content">조회수</option>
						<option value="nickName">좋아요</option> 
				</select>
					<input type="text" id="search1" class="form-control" 
							 placeholder="루틴을 검색하세요😘">
			
			<button type="submit" id="recommendbtn1" class="btn btn-default">검색하기</button>
			</div>
			<hr>
			
			<!-- 검색 리스트가 나타나는 영역 -->
			<h3>루틴 검색 결과</h3>
			<div id="m1" class="alert alert-success">
				<table class="table table-border" style="border: 1px solid black;">
					<thead>
						<tr>
							<th >루틴번호</th>
							<th >루틴명</th>
							<th >루틴테마</th>
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
			<h2 class="page-header">종합 베스트 순위<br><small>지금 루틴메이커에서 가장 인기있는 루틴은?👀</small></h2>
		
			<div class="list-group list-group-recommend">
				<c:forEach var="dto" items="${bestRoutine}">
					<a href="#routineModal" data-toggle="modal"  id="color${dto.routineseq}" class="list-group-item">${dto.routineseq}. ${dto.name}</a>
				</c:forEach>
			</div>
		
		</div>
		
	</div>



		<!-- Modal -->
		<div class="modal fade" id="routineModal" data-backdrop="static"
			tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
			
				<div class="modal-content">
			
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel" 
								style="text-align:center; font-size: 1.5em;">내 루틴에 퍼가기</h5>
						
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
							<br>
						</button>
					</div>
					<div class="modal-body">
						
						<table class="table table-bordered" id="routineplus">
							
							<tr>
								<th colspan="2">
									
									
								<input type="text" value="JavaScript 공부하기">
									
								</th>
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
	
	
	  /* Ajax 검색코드 */
	  /* 테이블에 출력하기 */
			
			 $('#recommendbtn1').click(function() {
		         
		       $.ajax({
		        	 
		            type: 'GET',
		            url: '/routinemaker/recommend/m1.action',
		            data: 'keyword=' + $('#search1').val(),
		            dataType: 'json',
		            success: function(routineThemeList) {
		               
		            	//이전 검색 결과물을 삭제
	            	$('#tbody1').html('');
	                       
                		if( routineThemeList.length > 0 ) {
                				
               			 $(routineThemeList).each(function(index, item) {
            
                		 	 $('#tbody1').append('<tr><td>' + item.routineseq + '</td>' 
			                    		 			+ ', <td>'+ item.name + '</td>' 
			                    		 			+ ', <td> ' + item.theme + '</td></tr>');
	                	
	                	 });
	               			 
		               			 
		               		 } else { 

		      					  $('#tbody1').append('<tr><td style="text-align:center;" colspan="3">데이터가 없습니다.</td></tr>') 
		                	 }
		            
		            
		            		},
		            		
	            		       	   error: function(a,b,c) {
					               console.log(a,b,c);
					               
					               
					            }
					         });
					         
					      }); 
				 
	 
	 			
	 
	 
	 
	 
    
	</script>

</body>
</html>


















