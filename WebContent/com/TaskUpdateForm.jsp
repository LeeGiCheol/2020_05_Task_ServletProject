<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Task Update</title>
<link
	href="https://fonts.googleapis.com/css2?family=Oswald&display=swap"
	rel="stylesheet" type="text/css">
<link href="../style.css?after" rel="stylesheet" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../css/bootstrap.css">
<style>
body {
	margin: 0;
	padding: 0;
	background: #EFEFEF url("../images/main-bg.jpg") repeat;
	font-family: 'Oswald', sans-serif;
	font-size: 16px;
	font-weight: 200;
	color: #000000;
/* 	position: relative; */
	/* display: flex;
	justify-content: flex-start;
	align-items: center;
	flex-direction: column; */
}
.up{
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

ul {
	list-style: none;
}
#nick{
	text-align: center;
}

label{
	margin-top: 30px;
	font-size: 2em;
}

textarea {
	resize: none;
}
#tno{
	visibility: hidden;
}

/* .btn-mini{
	margin: auto;
	display: flex;
	justify-content: space-between;
	align-items: center;
	flex-direction: row;
}  */
</style>

<script language="javascript" type="text/javascript">
	function a() {
		alert("수정완료");
		window.opener.parent.location.reload(); // 부모창 새로고침 
		window.opener.parent.location.reload(); // 한번하니까 안되서 두번해버림 
		window.opener.parent.location.reload(); // 한번하니까 안되서 두번해버림 

	}

	function linkToOpener() {
		window.self.close(); // 현재 팝업 닫기
		a();
	}
</script>


</head>
<body>
	<form action="update.do" method="post">
	<div class="up">
		<ul>
			<li>
				<!-- <label for="tno">번호</label> --> 
				<input id="tno" type="text" name="tno" size="5" value="${task.tno}"
						readonly>
<%-- 				<a class="btn btn-info" style="color: white;" name="tno">${task.tno}</a> --%>
				<div class="form-group">
					<label for="exampleFormControlTextarea1" id="nick">수정 내용</label>
					<textarea name="t_con" class="form-control" id="exampleFormControlTextarea1"
						name="t_con" cols="50" rows="10">${task.t_con}</textarea>
				</div>
				<div class="form-group">
					<select name="state" class="form-control" id="exampleFormControlSelect1">
						<option value="0" ${task.state==0?"selected":""}>준비</option>
						<option value="1" ${task.state==1?"selected":""}>진행</option>
						<option value="2" ${task.state==2?"selected":""}>완료</option>
					</select>
				</div>
			</li>
		</ul>
		<div class="btn-mini">
		<input class="btn btn-success" type="submit" value="등록" onclick="linkToOpener()"> 
		<input class="btn btn-warning"
			type="button" value="삭제"
			onclick='location.href="delete.do?tno=${task.tno}";'>
		<button class="btn btn-danger" type="reset" onClick="history.back()">취소</button>
		</div>
	</div>
	</form>
</body>
</html>