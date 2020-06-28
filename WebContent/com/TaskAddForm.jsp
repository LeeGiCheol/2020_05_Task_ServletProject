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
<title>Task Add</title>
<link
	href="https://fonts.googleapis.com/css2?family=Oswald&display=swap"
	rel="stylesheet" type="text/css">
<link href="../style.css?after" rel="stylesheet" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../css/bootstrap.css">
<style>
label{
	margin-top: 50px;
	font-size: 2em;
}
body {
	margin: 0;
	padding: 0;
	background: #EFEFEF url("../images/main-bg.jpg") repeat;
	font-family: 'Oswald', sans-serif;
	font-size: 16px;
	font-weight: 200;
	color: #000000;
/* 	position: relative;
	display: flex;
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

textarea {
	resize: none;
}

.cen{
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: row;
}
</style>

<script language="javascript" type="text/javascript">
	function linkToOpener() {
		opener.location.replace("list.do");
		opener.location.replace("list.do");
		opener.location.replace("list.do");

		window.close();
	}
</script>


</head>
<body>
	<div class="wrapper">
		<form action="add.do" method="post">
		<div class="up">
			<div class="form-group">
				<label for="exampleFormControlTextarea1">내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					cols="50" rows="10" name="t_con"></textarea>
			</div>
			<div class="form-group">
				<select name="state"
					class="form-control" id="exampleFormControlSelect1">
					<option value="0">대기</option>
					<option value="1">진행</option>
					<option value="2">완료</option>
				</select> 
			</div>
			<div class="cen">
				<button class="btn btn-success" type="submit"
					onClick='linkToOpener()'>등록</button>
				<button class="btn btn-danger" type="reset" onClick='window.close()'>취소</button>
			</div>
		</div>
		</form>
	</div>
</body>
</html>