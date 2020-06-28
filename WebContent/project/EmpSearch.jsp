<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" 
rel="stylesheet" type="text/css">
<link href="../style.css?after" rel="stylesheet" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>사원정보 검색</title>
</head>
<style>
*{
font-family: 'Oswald', sans-serif;
}
.container{
		width: 90%;
		height: 1200px;
		margin: 0 auto;
		text-align: center;
		border: 1px solid #ccc;
	}
.container h1{
	font-size: 2.5em;
	font-weight: bold;
	
}

.form-inline {
	display: inline-flex;
}

.search {
	margin: auto;
	margin-top: 30px;
	margin-bottom: 30px;
	width: 70%;
	height: 10px;
}

ul {
	padding: 0;
	text-align: center;
}

li {
	list-style: none;
}

label {
	float: left;
	text-align: right;
	width: 60px;
}

table {
	margin: auto;
	margin-top: 80px;
	width: 1000px;
	text-align: center;
}
th {
	text-align: center;
}
</style>
<body>
	<jsp:include page="../Header2.jsp" />
	<div class="container">
<!-- 	<div class="container text-center"> -->
		<h1>사원정보 검색</h1>
		<form action='search.do' method='post'>
			<div class="search">
				<div class="form-group">
					<ul>
						<li><select class="form-control"
							id="exampleFormControlSelect1" name='dname' size='1'>
								<option value="" disabled selected>부서명 클릭</option>
								<option value="all">전체부서</option>
								<option value="개발" id="개발">개발</option>
								<option value="인사" id="인사">인사</option>
								<option value="회계" id="회계">회계</option>
						</select>
							<div class="input-group">
								<input type="text" class="form-control form-control-sm"
									placeholder="이름 입력" name="ename">
								<div class="input-group-btn">
									<button class="btn btn-default" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div></li>
					</ul>
				</div>
			</div>

			<table>
				<th>부서명</th>
				<th>사원번호</th>
				<th>이름</th>
				<th>입사일</th>
				<th>유선번호</th>
				<c:choose>
					<c:when
						test='${emp.dname eq "개발" || emp.dname eq "인사" || emp.dname eq "회계"}'>
						<c:forEach var='list' items="${empDnSearch}">
							<tr>
								<td>${list.dname}</td>
								<td>${list.eno}</td>
								<td>${list.ename}</td>
								<td>${list.h_date}</td>
								<td>${list.tel}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:when test='${emp.dname eq "all"}'>
						<c:forEach var='list1' items="${empAllSearch}">
							<tr>
								<td>${list1.dname}</td>
								<td>${list1.eno}</td>
								<td>${list1.ename}</td>
								<td>${list1.h_date}</td>
								<td>${list1.tel}</td>
							</tr>

						</c:forEach>
					</c:when>

					<c:when test='${search.ename eq null}'>
						<!-- 입력창에 아무것도 적지않으면 현재 떠있는 정보를 모두 지운다 -->
					</c:when>
				</c:choose>
			</table>
		</form>
<!-- 	</div> -->
	</div>

	<jsp:include page="/Tail.jsp" />
</body>
</html>