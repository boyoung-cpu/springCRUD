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
<h1>킥보드 사용신청</h1>

<table id="kickboardlist" width="90%">
<tr>
	<th>고유번호</th>
	<th>모델명</th>
	<th>배터리상태</th>
	<th>위치</th>
</tr>
<c:forEach items="${kickboardlist}" var="u">
	<tr>
	<%-- el(expression language) --%>
		<td>${u.getNum()}</td>
		<td>${u.getModel()}</td>
		<td>${u.getBattery()}</td>
		<td>${u.getEndLocation()}</td>
		<td><a href="addpostform/${u.getNum()}">사용 신청</a></td>
	</tr>
</c:forEach>
</table>
</body>
</html>
