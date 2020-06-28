<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Refresh" content="1;url=login.do">
<title>로그인 실패</title>
</head>
<style>
body {
	margin: 0 auto;
	padding: 0;
	background: #EFEFEF url(../images/main-bg.jpg) repeat;
	font-family: 'Oswald', sans-serif;
	font-size: 16px;
	font-weight: 200;
	color: #000000;
}

.member {
	padding: 40px;
	margin: 0 auto;
	width: 40%;
	height: 30%;
/* 	position: absolute; */
}

.member p, a {
	font-size: 40;
	font-weight: 200;
	text-align: center;
}
</style>
<body>
	<div class="member">
		<p>
			로그인 실패입니다.<br> 이메일 또는 암호가 맞지 않습니다!<br> 잠시 후에 다시 로그인 화면으로
			갑니다.
		</p>
	</div>
</body>
</html>