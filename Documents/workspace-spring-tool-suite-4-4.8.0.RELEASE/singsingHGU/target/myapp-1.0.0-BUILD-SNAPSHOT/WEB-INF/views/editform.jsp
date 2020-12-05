<%-- jsp directives페이지의 구조를 정한다.--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.my.myapp.BoardDAO, com.my.myapp.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>

<h1>Edit Form</h1>


<form:form commandName="vo" method="POST" action="../editok" >
<form:hidden path="seq"/>
<table id="edit">
<tr><td>Category:</td><td><form:input path="category" /></td></tr>
<tr><td>Title:</td><td><form:input path="title" /></td></tr>
<tr><td>Writer:</td><td><form:input path="writer" /></td></tr>
<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
</table>
<input type="submit" value="수정하기 ">
<input type="submit" value="취소하기 " onclick="history.back()">
</form:form>

</body>
</html>