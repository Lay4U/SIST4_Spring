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

	<!-- views > recommend > recommendRoutineset.jsp -->

	<div class="container">
		<nav class="nav-recommend">
			<ul class="nav nav-tabs">
				<li role="presentation"><a
					href="/routinemaker/recommend/themebest.action">π νλ§λ³ λ£¨ν΄</a></li>
				<li role="presentation" class="active"><a
					href="/routinemaker/recommend/routineset.action">π λ£¨ν΄ μΈνΈ</a></li>
				<li role="presentation"><a
					href="/routinemaker/recommend/recommend.action">π μΆμ² λ£¨ν΄</a></li>
			</ul>
		</nav>

		<h1 class="page-header">
			λ£¨ν΄ μΈνΈ <br> <small>μνλ λ£¨ν΄μ ν΄λ¦­ν΄μ λ΄ νΌλλ‘ νΌκ° λ³΄μΈμ!</small>
		</h1>


		<div class="container-routineset">

			<div class="img-container-routineset"
				onclick="location.href='/routinemaker/recommend/routinesetview.action';">
				<img class="image-routineset"
					src="/routinemaker/resources/images/miraclemorning.jpg" />
			</div>


			<div class="container-routineset-text" style="padding:30px;">
				<div class="container-title">μΈμμ λ°κΎΈλ λ―ΈλΌν΄ λͺ¨λβ</div>
				<div class="container-padding-horizen"></div>
				<div class="container-content">
					ν ν΄μ μμμ μ€μνκ² μ¬κΈ°λ©΄μ, μ νλ£¨μ μμμ μλμ λ―Έλ£¨λ κ²μΌλ‘ μμνλμ?
					<λ―ΈλΌν΄ λͺ¨λ> μ μ μ ν  μλ‘λλ μμΉ¨μ κΈ°λΆ μ’κ² μμνλ κ²μ΄ νλ£¨μ μμ°μ±κ³Ό μ±κ³΅μ κ²°μ νλ€κ³ 
					λ§νλ©°, μμΉ¨μ κΈ°λΆ μ’κ² λ§λλ μ¬μ―κ°μ§ μμΉ¨ μ΅κ΄μ μ μν©λλ€.β<br> 
				</div>
				
				<mark><a href='#'>#λͺ¨λλ£¨ν΄</a>
			</div>


		</div>

		<hr>
		<div class="container-padding-horizen"></div>

		

			<div class="container-routineset">

			<div class="img-container-routineset"
				onclick="location.href='/routinemaker/recommend/routinesetview.action';">
				<img style="width:404px;" class="image-routineset"
					src="/routinemaker/resources/images/exercise.jpg" />
			</div>


			<div class="container-routineset-text" style="padding:30px;">
				<div class="container-title">ν΄κ·Ό ν μ΄λνλ μ΅κ΄ κΈ°λ₯΄κΈ°!</div>
				<div class="container-padding-horizen"></div>
				<div class="container-content">
					ν΄κ·Ό ν μ΄λνλ μ΅κ΄μ λ§λ€κ³  μΆμ§λ§, μ€μ²νκΈ° μ΄λ €μ λ€λ©΄ μ΄ λ£¨ν΄μΈνΈλ₯Ό μΆμ²ν©λλ€ : )<br>
					 κΎΈμ€ν μ΄λνκΈ° μν΄ νμν νκ²½ μΈνλΆν° μ€μ  μ΄λκΉμ§ λͺ¨λ λͺ¨μλ΄€μ΄μ :) <br> 
				</div>
				
				<mark><a href='#'>#κ±΄κ°</a>
			</div>


		</div>


		</div>	




		<script>

		
		  
		  		
	 
		</script>
</body>
</html>