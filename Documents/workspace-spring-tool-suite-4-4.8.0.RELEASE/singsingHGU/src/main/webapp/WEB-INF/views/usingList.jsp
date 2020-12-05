<%-- jsp directives 페이지의 구조를 정한다.--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.my.myapp.BoardDAO, com.my.myapp.BoardVO,java.util.*"%>


<%-- tag library --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<link rel="stylesheet" href="${path}/resources/css/style.css">

<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/'+id;
	}
</script>
</head>
<body>
<h1>킥보드 반납신청</h1>

<table id="usinglist" width="90%">
<tr>
	<th>사용자 이름</th>
	<th>사용자 학번</th>
	<th>사용자 연락처</th>
	<th>대여 시작시간</th>
	<th>대여 종료시간</th>
	<th>고유 번호</th>
	<th>시작 위치</th>
	<th>종료 위치</th>
</tr>
<c:forEach items="${usinglist}" var="u">
	<tr>
	<%-- el(expression language) --%>
		<td>${u.getName()}</td>
		<td>${u.getStudentID()}</td>
		<td>${u.getPhone()}</td>
		<td>${u.getStartTime()}</td>
		<td>${u.getEndTime()}</td>
		<td>${u.getNum()}</td>
		<td>${u.getStartLocation()}</td>
		<td>${u.getEndLocation()}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>