<%-- jsp directives --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>사용 신청하기</h1>
<form action="addok(${u.getNum()})" method="post">
<table id="edit">
<tr><td>사용자 학번:</td><td><input type="text" name="studentID"/></td></tr>
<tr><td>사용자 이름:</td><td><input type="text" name="name"/></td></tr>
<tr><td>사용자 연락처:</td><td><input type="text" name="phone"/></td></tr>
<tr><td>킥보드 고유번호:</td><td><input type="text" name="num"/></td></tr>

<tr><td></td><td align="right">
<input type="submit" value="취소하기 " onclick="history.back()">
<button type="submit">등록하기 </button>
</table>
</form>
<!-- 사용 가능여부 x로 바꾸기 -->

</body>
</html>