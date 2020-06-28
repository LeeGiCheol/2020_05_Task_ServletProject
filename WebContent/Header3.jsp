<%-- 메뉴 추가 --%>
<%@page import="spms.vo.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div
	style="background-color: #064C8A; color: #ffffff; height: 30px; padding: 5px; margn-bottom: 30px;">
	<span style="float: right;">
		<c:if test="${empty sessionScope.emp or 
              empty sessionScope.emp.eno}">
			<a style="color: white;"
				href="<%=request.getContextPath()%>/auth/login.do">로그인</a>
		</c:if> 
		<c:if
			test="${!empty sessionScope.emp and 
              !empty sessionScope.emp.eno}">
				${sessionScope.emp.ename}
				 <a style="color: white;"
				href="<%=request.getContextPath()%>/auth/memberlist.do">회원정보</a>
				(<a style="color: white;"
				href="<%=request.getContextPath()%>/auth/logout.do">로그아웃</a>)
		</c:if>
	</span>
</div>
<div id="header">
    <div id="logo">
        <h1><a href="../com/list.do">Workspace</a></h1>
    </div>
</div>
<!-- end #header -->
<div id="menu">
    <ul>
        <li class="current_page_item"><a href="../com/list.do">Home</a></li>
        <li><a href="search.do">EmpInfo</a></li>
        <li><a href="list.do">Community</a></li>
        <li><a href="../com/LunchMenu.jsp">LunchMenu</a></li>
    </ul>
</div>