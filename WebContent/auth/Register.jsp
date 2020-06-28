<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>회원 등록</title>
</head>
<style>
body {
	margin: 0;
	padding: 0;
	background: #EFEFEF url(../images/main-bg.jpg) repeat;
	font-family: 'Oswald', sans-serif;
	font-size: 16px;
	font-weight: 200;
	color: #000000;
	position:relative;
	
	
}

h1, h2, h3 {
	margin: 5%;
	padding: 0;
	font-weight: 300;
	color: #221D1D;
}
.member{
	border: 2px solid black;
	margin: auto;
	margin-top: 50px;
	width: 30%;
	height: 600px;
/* 	position: absolute; */
	display: flex;
	justify-content: flex-start;
	align-items: center;
	flex-direction: column;
}
.member form{
	font-size: 40;
}
</style>
<body>
<div class="member">
		<h1>회원 등록</h1>
		<form action="register.do" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">이름</label> 
				<input type="text"
					class="form-control" id="exampleInputEmail1" name="ename">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">비밀번호</label> 
				<input type="password"
					class="form-control" id="exampleInputEmail1" name="pw">
			</div>
			
			
				<div class="form-group">
					<label for="exampleInputEmail1">전화번호</label> 
					<input type="text"
						class="form-control" id="exampleInputEmail1" name="tel">
				</div>
			
			
			<div class="form-group">
		    <label for="exampleFormControlSelect1">부서명</label>
		    <select class="form-control" id="exampleFormControlSelect1" name='dname'>
		      	<option value="개발">개발</option>
				<option value="인사">인사</option>
				<option value="회계">회계</option>
		    </select>
		  	</div>
			
			<button type="submit" class="btn btn-primary" value="중복확인"
			onclick="javascript: form.action='registerCheck.do'">중복확인</button>			
			<button type="submit" class="btn btn-primary" value="추가"
				onclick='location.href="register.do"'>추가</button>
			<button type="button" class="btn btn-primary" value="취소"
			onclick='location.href="login.do"'>취소</button>
			
		</form>
</div>
</body>
</html>