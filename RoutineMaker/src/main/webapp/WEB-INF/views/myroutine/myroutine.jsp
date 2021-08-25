<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- views > myroutine.jsp -->
<div class="container">


	<h1 class="page-header">마이루틴</h1>

	<div id="my-profile">
		<div id="my-photo"></div>
		<ul>
			<li>사용자이름</li>
			<li>루틴 시작한 지 00일</li>
			<li>자기소개</li>
		</ul>
	</div>

	<div id="myroutine">
		<div id="my-date">
			<span id="my-date1">
				<span><span>2021-8-16</span>~<span>2021-8-22</span></span>
				<input type="date" id="my-calendar" class="btn btn-xs" name="my-calendar" value="▼">
			</span>
			
			<span id="my-date2">
			<div id="my-timefilter">
				타임필터
				<span> 
				<i class="fa-solid fa-brightness"></i> 
				<i class="fa-solid fa-circle-three-quarters"></i> 
				<i class="fa-solid fa-moon"></i>
			</span>
			</div>
			<input type="button" id="numberchange" class="btn btn-info"
				name="numberchange" value="루틴순서변경">
			</span>
			
			
		</div>
		<table class="table table-bordered" id="my-table">
			<tr>
				<th>번호</th>
				<th>테마</th>
				<th>시간/상황</th>
				<th>루틴명</th>
				<th>8/16</th>
				<th>8/17</th>
				<th>8/18</th>
				<th>8/19</th>
				<th>8/20</th>
				<th>8/21</th>
				<th>8/22</th>
				<th>3주차 루틴회고</th>
			</tr>
			<tr>
				<td>1</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>

		<input type="button" id="routineplus" class="btn btn-info"
			name="routineplus" value="루틴추가하기"> 
		<input type="button" id="bookroutine" class="btn btn-info" name="bookroutine"
			value="예약루틴확인">


	</div>


	<table>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
	</table>


</div>

<script>
	
</script>
