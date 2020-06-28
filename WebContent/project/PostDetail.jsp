<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
   
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" 
	rel="stylesheet" type="text/css">
    <link href="../style.css?after" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" href="../css/bootstrap.css">
<title>Update Post</title>
</head>
<style>
*{
	font-family: 'Oswald', sans-serif;
}
.container {
	width: 900px;
	height: 700px;
	margin: auto;
	text-align: center;
}

h1 {
	margin: 20px;
	font-size: 4em;
}

textarea {
	resize: none;
	overflow-x: hidden;
	overflow-y: auto;
}

.content {
	/* margin-left: 200px; */
	margin: 0 auto;
}

p {
	position: relative;
	display: flex;
}

.text {
	position: relative;
	display: flex;
}

#title {
	width: 375px;
}

label{
	margin-top: 20px;
	font-size: 2em;
}

input{
	font-size: 2em;
}

.form-control{
	font-size: 2em;
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

<body>
	<jsp:include page="../Header3.jsp" />
		<div class="container">
			<h1>게시글 상세</h1>
		<div class="form-group">
			<label for="formGroupExampleInput">제목</label> 
			<input
				type="text" class="form-control" id="title formGroupExampleInput"
				name="title" value="${post.title}" readonly/>
		</div>
		<div class="form-group">
			<label id="title" for="formGroupExampleInput2">내용</label> 
			<textarea
				class="text form-control" id="formGroupExampleInput2"
				name="p_con" cols="50" rows="10" readonly>${post.p_con}</textarea>
		</div>
		<input class="btn btn-warning" type="reset" value="취소" onclick="history.back()" />
		</div>
	<jsp:include page="../Tail.jsp" />
</body>
</html>