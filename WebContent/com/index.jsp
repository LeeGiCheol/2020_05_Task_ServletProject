<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 팝업창 끌때는 버튼태그안에 onClick='window.close()'  넣어주면 된다  -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link
	href="https://fonts.googleapis.com/css2?family=Oswald&display=swap"
	rel="stylesheet" type="text/css">
<link href="../style.css?after" rel="stylesheet" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../css/bootstrap.css">
<title>Welcome</title>
</head>
<style>
* {
	font-family: 'Oswald', sans-serif;
}

h2 {
	text-align: center;
	font-weight: bold;
	font-size: 2.5em;
}

ul {
	list-style: none;
}

.btn-group-sm>.btn, .btn-sm {
	padding: 5px 10px;
	font-size: 12px;
	line-height: 1.5;
	border-radius: 3px;
}

.btn-group-xs>.btn, .btn-xs {
	padding: 1px 5px;
	font-size: 5px;
	line-height: 1.5;
	border-radius: 3px;
}

.fa-ul ul {
	display: inline-block;
	margin: 0 auto;
	padding: 0;
}

.fa-ul li {
	width: 100%;
	float: left;
	padding: 2px 5px;
}

</style>
<body>
	<jsp:include page="../Header.jsp" />
	<h2>${sessionScope.emp.dname}부서</h2>

	<c:choose>
		<c:when test="${sessionScope.emp.dname eq '개발'}">

			<section class="pricing py-5">
				<div class="container">
					<div class="row">
						<!-- Free Tier -->
						<div class="col-lg-4">
							<div class="card mb-5 mb-lg-0">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">대기</h5>
									<hr>
									<ul class="card1">
										<c:forEach var="t" items="${task}">
											<c:if test="${t.state == 0}">
												<c:if test="${t.dname eq '개발'}">

													<ul>
														<li>${t.t_con}<br> 작성자: ${t.ename} <br>
															작성시간 : ${t.sta_date} 
															<a href='change.do?tno=${t.tno}'><br>
																<button class="btn btn-info btn-xs">시작</button> 
															</a> 
															<a href='update.do?tno=${t.tno}'>
																<button class="btn btn-warning btn-xs">수정</button>
															</a> 
															<a href="delete.do?tno=${t.tno}">
																<button class="btn btn-danger btn-xs">삭제</button>
															</a>
														</li>
													</ul><br>
												</c:if>
											</c:if>
										</c:forEach>
									</ul>
									<a href='add.do'
										class="btn btn-block btn-primary text-uppercase"
										onclick="window.open(this.href,'팝업창','width=800, height=380,top=200,left=300'); return false;">Button</a>
								</div>
							</div>
						</div>
						<!-- Plus Tier -->
						<div class="col-lg-4">
							<div class="card mb-5 mb-lg-0">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">진행</h5>
									<hr>
									<ul class="card2">
										<c:forEach var="t" items="${task}">
											<c:if test="${t.state == 1}">
												<c:if test="${t.dname eq '개발'}">
													<ul>
														<li>${t.t_con}<br> 작성자: ${t.ename} <br>
															작성시간 : ${t.sta_date} 
															<a href='change.do?tno=${t.tno}'><br>
																<button class="btn btn-info btn-xs">시작</button> 
															</a> 
															<a href='update.do?tno=${t.tno}'>
																<button class="btn btn-warning btn-xs">수정</button>
															</a> 
															<a href="delete.do?tno=${t.tno}">
																<button class="btn btn-danger btn-xs">삭제</button>
															</a>
														</li>
													</ul><br>
												</c:if>
											</c:if>
										</c:forEach>
									</ul>

									<a href='add.do'
										class="btn btn-block btn-primary text-uppercase"
										onclick="window.open(this.href,'팝업창','width=800, height=380,top=200,left=300'); return false;">Button</a>

								</div>
							</div>
						</div>
						<!-- Pro Tier -->
						<div class="col-lg-4">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">완료</h5>
									<hr>
									<ul class="card3">
										<c:forEach var="t" items="${task}">
											<c:if test="${t.state == 2}">
												<c:if test="${t.dname eq '개발'}">
													<ul>
														<li>${t.t_con}<br> 작성자: ${t.ename} <br>
															작성시간 : ${t.sta_date} <br>
															<a href='update.do?tno=${t.tno}'>
																<button class="btn btn-warning btn-xs">수정</button>
															</a>
															<a href="delete.do?tno=${t.tno}">
																<button class="btn btn-success btn-xs">끝</button> 
															</a>
														</li>
													</ul><br>
												</c:if>
											</c:if>
										</c:forEach>
									</ul>
									<a href='add.do'
										class="btn btn-block btn-primary text-uppercase"
										onclick="window.open(this.href,'팝업창','width=800, height=380,top=200,left=300'); return false;">Button</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</c:when>


		<c:when test="${sessionScope.emp.dname eq '회계'}">

			<section class="pricing py-5">
				<div class="container">
					<div class="row">
						<!-- Free Tier -->
						<div class="col-lg-4">
							<div class="card mb-5 mb-lg-0">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">대기</h5>
									<hr>
									<ul class="fa-ul">
										<c:forEach var="t" items="${task}">
											<c:if test="${t.state == 0}">
												<c:if test="${t.dname eq '회계'}">
													<ul>
														<li>${t.t_con}<br> 작성자: ${t.ename} <br>
															작성시간 : ${t.sta_date} 
															<a href='change.do?tno=${t.tno}'><br>
																<button class="btn btn-info btn-xs">시작</button> 
															</a> 
															<a href='update.do?tno=${t.tno}'>
																<button class="btn btn-warning btn-xs">수정</button>
															</a> 
															<a href="delete.do?tno=${t.tno}">
																<button class="btn btn-danger btn-xs">삭제</button>
															</a>
														</li>
													</ul><br>
												</c:if>
											</c:if>
										</c:forEach>
									</ul>
									<a href='add.do'
										class="btn btn-block btn-primary text-uppercase"
										onclick="window.open(this.href,'팝업창','width=800, height=380,top=200,left=300'); return false;">Button</a>
								</div>
							</div>
						</div>
						<!-- Plus Tier -->
						<div class="col-lg-4">
							<div class="card mb-5 mb-lg-0">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">진행</h5>
									<hr>
									<ul class="fa-ul">
										<c:forEach var="t" items="${task}">
											<c:if test="${t.state == 1}">
												<c:if test="${t.dname eq '회계'}">
													<ul>
														<li>${t.t_con}<br> 작성자: ${t.ename} <br>
															작성시간 : ${t.sta_date} 
															<a href='change.do?tno=${t.tno}'><br>
																<button class="btn btn-info btn-xs">시작</button> 
															</a> 
															<a href='update.do?tno=${t.tno}'>
																<button class="btn btn-warning btn-xs">수정</button>
															</a> 
															<a href="delete.do?tno=${t.tno}">
																<button class="btn btn-danger btn-xs">삭제</button>
															</a>
														</li>
													</ul><br>
												</c:if>
											</c:if>
										</c:forEach>
									</ul>

									<a href='add.do'
										class="btn btn-block btn-primary text-uppercase"
										onclick="window.open(this.href,'팝업창','width=800, height=380,top=200,left=300'); return false;">Button</a>

								</div>
							</div>
						</div>
						<!-- Pro Tier -->
						<div class="col-lg-4">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">완료</h5>
									<hr>
									<ul class="fa-ul">
										<c:forEach var="t" items="${task}">
											<c:if test="${t.state == 2}">
												<c:if test="${t.dname eq '회계'}">
													<ul>
														<li>${t.t_con}<br> 작성자: ${t.ename} <br>
															작성시간 : ${t.sta_date} <br>
															<a href='update.do?tno=${t.tno}'>
																<button class="btn btn-warning btn-xs">수정</button>
															</a> 
															<a href="delete.do?tno=${t.tno}">
																<button class="btn btn-success btn-xs">끝</button> </a>
														</li>
													</ul><br>
												</c:if>
											</c:if>
										</c:forEach>
									</ul>
									<a href='add.do'
										class="btn btn-block btn-primary text-uppercase"
										onclick="window.open(this.href,'팝업창','width=800, height=380,top=200,left=300'); return false;">Button</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</c:when>





		<c:when test="${sessionScope.emp.dname eq '인사'}">

			<section class="pricing py-5">
				<div class="container">
					<div class="row">
						<!-- Free Tier -->
						<div class="col-lg-4">
							<div class="card mb-5 mb-lg-0">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">대기</h5>
									<hr>
									<ul class="fa-ul">
										<c:forEach var="t" items="${task}">
											<c:if test="${t.state == 0}">
												<c:if test="${t.dname eq '인사'}">
													<ul>
														<li>${t.t_con}<br> 작성자: ${t.ename} <br>
															작성시간 : ${t.sta_date} 
															<a href='change.do?tno=${t.tno}'><br>
																<button class="btn btn-info btn-xs">시작</button> 
															</a> 
															<a href='update.do?tno=${t.tno}'>
																<button class="btn btn-warning btn-xs">수정</button>
															</a> 
															<a href="delete.do?tno=${t.tno}">
																<button class="btn btn-danger btn-xs">삭제</button>
															</a>
														</li>
													</ul><br>
												</c:if>
											</c:if>
										</c:forEach>
									</ul>
									<a href='add.do'
										class="btn btn-block btn-primary text-uppercase"
										onclick="window.open(this.href,'팝업창','width=800, height=380,top=200,left=300'); return false;">Button</a>
								</div>
							</div>
						</div>
						<!-- Plus Tier -->
						<div class="col-lg-4">
							<div class="card mb-5 mb-lg-0">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">진행</h5>
									<hr>
									<ul class="fa-ul">
										<c:forEach var="t" items="${task}">
											<c:if test="${t.state == 1}">
												<c:if test="${t.dname eq '인사'}">
													<ul>
														<li>${t.t_con}<br> 작성자: ${t.ename} <br>
															작성시간 : ${t.sta_date} 
															<a href='change.do?tno=${t.tno}'><br>
																<button class="btn btn-info btn-xs">시작</button> 
															</a> 
															<a href='update.do?tno=${t.tno}'>
																<button class="btn btn-warning btn-xs">수정</button>
															</a> 
															<a href="delete.do?tno=${t.tno}">
																<button class="btn btn-danger btn-xs">삭제</button>
															</a>
														</li>
													</ul><br>
												</c:if>
											</c:if>
										</c:forEach>
									</ul>

									<a href='add.do'
										class="btn btn-block btn-primary text-uppercase"
										onclick="window.open(this.href,'팝업창','width=800, height=380,top=200,left=300'); return false;">Button</a>

								</div>
							</div>
						</div>
						<!-- Pro Tier -->
						<div class="col-lg-4">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">완료</h5>
									<hr>
									<ul class="fa-ul">
										<c:forEach var="t" items="${task}">
											<c:if test="${t.state == 2}">
												<c:if test="${t.dname eq '인사'}">
													<ul>
														<li>${t.t_con}<br> 작성자: ${t.ename} <br>
															작성시간 : ${t.sta_date} <br>
															<a href='update.do?tno=${t.tno}'>
																<button class="btn btn-warning btn-xs">수정</button>
															</a>
															<a href="delete.do?tno=${t.tno}">
																<button class="btn btn-success btn-xs">끝</button> 
															</a>
														</li>
													</ul><br>
												</c:if>
											</c:if>
										</c:forEach>
									</ul>
									<a href='add.do'
										class="btn btn-block btn-primary text-uppercase"
										onclick="window.open(this.href,'팝업창','width=800, height=380,top=200,left=300'); return false;">Button</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</c:when>

	</c:choose>
	<jsp:include page="../Tail.jsp" />
</body>
</html>
