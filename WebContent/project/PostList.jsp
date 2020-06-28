<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>WorkSpace</title>
   <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" 
	rel="stylesheet" type="text/css">
    <link href="../style.css?after" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" href="../css/bootstrap.css">
<title>community</title>
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
	margin: 20px;
	font-weight: bold;
	font-size: 2.5em;
	}

/* .addBtn {
	float: center;
	margin: 0 0 3px 600px;
} */

.but{
	margin-bottom: 5px;
	}

.postList{
	width: 100%%;
	height: 1000px;
	margin: 0 auto;
	text-align: center;	
	border: 1px solid #ccc;
	border-radius: 5px;
}

/* .search {
	margin: 10px 0 10px 0;
}
 */
table{
	border: 1px solid #ccc;
	width: 100%;
	margin: auto;
	padding:  0;
	text-align: center;
	}

.title{text-align: left;}

.btn-group-xs>.btn, .btn-xs {
	padding: 3px 8px;
	font-size: 5px;
	line-height: 1.5;
	border-radius: 3px;
}
</style>
</head>
<body>
	<jsp:include page="../Header3.jsp" />

	<div class="container">
      <h1>COMMUNITY</h1>

      <a href='add.do'
         onclick="window.open(this.href,'팝업창','width=820, height=610, top=90, left=300'); return false;">
         <button class="addBtn">글 작성</button>
      </a> 
      <form action="selectList.do" method="post">
            <input type="search" name="title" placeholder="제목만 입력" />
      <button class="search">검색</button>
      </form>
		
		<div class="postList">
			
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>게시글 제목</th>
						<th>작성자</th>
						<th>부서명</th>
						<th>날짜</th>
						<th></th>
					</tr>					
				</thead>
					<c:forEach var="p" items="${post}"> 
						<tbody>
							<tr>
								<td>${p.pno}</td>
								<td class="title">
								<a href="detail.do?pno=${p.pno}">${p.title}</a>
								</td>
								<td class="name">${p.ename}</td>
								<td class="name">${p.dname}</td>
								<td class="date">${p.cre_date}</td>
								<c:choose>
									<c:when test="${p.eno eq sessionScope.emp.eno}">
										<td><a href="update.do?pno=${p.pno}">
																		<button class="btn btn-success btn-xs">수정</button>
																</a></td>
									</c:when>
									<c:otherwise>
										<td></td>
									</c:otherwise>	
								</c:choose>
								
								<c:choose>
									<c:when test="${p.eno eq sessionScope.emp.eno}">					
									<td><a href="delete.do?pno=${p.pno}">
																<button class="btn btn-danger btn-xs">삭제</button>
														</a></td>
									</c:when>
									<c:otherwise>
										<td></td>
									</c:otherwise>	
								</c:choose>
							</tr>
						</tbody>
					</c:forEach>
			</table>
		</div>
	</div>
	
	<jsp:include page="/Tail.jsp"/>
</body>
</html>