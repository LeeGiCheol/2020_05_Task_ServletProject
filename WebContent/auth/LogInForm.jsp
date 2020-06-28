<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>로그인</title>
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
	display: flex;
	justify-content: flex-start;
	align-items: center;
	flex-direction: column;
}

h1, h2, h3 {
	margin: 0;
	padding: 0;
	color: #221D1D;
}

.member {
	border: 2px solid black;
	/* 	margin-left: 600px; */
	margin-top: 50px;
	padding: 30px;
	width: 300px;
	height: 400px;
}

.member p, a {
	font-size: 40;
}
</style>
<body>
	<div class="member">
		<form action="login.do" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">사번</label> <input type="text"
					class="form-control" id="exampleInputEmail1" name="eno">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">비밀번호</label> <input type="password"
					class="form-control" id="exampleInputPassword1" name="pw">
			</div>
			<button type="submit" class="btn btn-primary" value="로그인">로그인</button>
			<button type="button" class="btn btn-primary" value="회원가입"
				onclick='location.href="register.do"'>회원가입</button>
		</form>
	</div>
</body>
</html>