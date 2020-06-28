<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>회원 정보</title>
</head>
<style>
body {
	margin: 0;
	padding: 0;
	background: #EFEFEF url("../images/main-bg.jpg") repeat;
	font-family: 'Oswald', sans-serif;
	font-size: 16px;
	font-weight: 200;
	color: #000000;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	flex-direction: column;
}

h1, h2, h3 {
	margin: 4% 0;
	padding: 0;
	color: #221D1D;
	text-align: center;
}

.wrapper {
	display: flex;
	justify-content: flex-start;
	align-items: center;
	flex-direction: column;
	width: 20%;
	height: 40%;
	border: 2px solid black;
	padding: 10px;
	margin-top: 3%;;
}

.member {
	/* 	margin-left: 600px; */
	margin: 0 auto;
	padding: 20px;
	width: 100%;
	height: 100%;
}

#but {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: row;
	margin: 0 auto;
	padding: 5px;
}
</style>
<body>

	<div class="wrapper">
		<div class="member">
			<h1>회원 정보</h1>
			<ul class="list-group">
				<li class="list-group-item">사번 : ${emp.eno}</li>
				<li class="list-group-item">이름 : ${emp.ename}</li>
				<li class="list-group-item">비밀번호 : ${emp.pw}</li>
				<li class="list-group-item">유선번호 : ${emp.tel}</li>
				<li class="list-group-item">입사일 : ${emp.h_date}</li>
				<li class="list-group-item">부서명 : ${emp.dname}</li>
			</ul>
		</div>
		<div class="but">
			<c:if test="${empty sessionScope.emp.eno}">
				<button type="button" class="btn btn-primary" value="로그인"
					onclick='location.href="login.do"'>로그인</button>
			</c:if>
			
			<c:if test="${!empty sessionScope.emp.eno}">
				<button type="button" class="btn btn-primary" value="로그아웃"
					onclick='location.href="logout.do"'>로그아웃</button>
				<button type="button" class="btn btn-primary" value="task목록"
					onclick='location.href="../com/list.do"'>Task페이지</button>
					
			</c:if>
			
		</div>
	</div>
</body>
</html>