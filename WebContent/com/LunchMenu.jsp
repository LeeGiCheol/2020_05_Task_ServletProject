<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="UTF-8">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" 
rel="stylesheet" type="text/css">
<link href="../style.css?after" rel="stylesheet" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../css/bootstrap.css">
<title>LunchMenu</title>
</head>
<style>
*{
font-family: 'Oswald', sans-serif;
}
.container{
		width: 90%;
		height: 700px;
		margin: 0 auto;
		text-align: center;
		border: 1px solid #ccc;
	}
.postList{
	width: 100%
	margin: 0 auto;

}	
#lunch{
	padding-top: 50px;
	width: 80%;
}
	
</style>
<body>
<jsp:include page="../Header4.jsp" />
<div class="container">
   <div class="postList">
	<img id="lunch" alt="lunchmenu" src="../images/lunchmenu.jpg">
   </div>
</div>
<jsp:include page="/Tail.jsp"/>
</body>
</html>