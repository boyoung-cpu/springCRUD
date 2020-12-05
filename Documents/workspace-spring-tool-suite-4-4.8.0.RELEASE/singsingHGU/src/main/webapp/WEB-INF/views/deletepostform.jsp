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

<h1>반납 신청</h1>
<form action="delete_ok(${u.getNum()})" method="post">
<table id="edit">
<tr><td>사용자 학번:</td><td><input type="text" name="studentID"/></td></tr>
<tr><td>킥보드 위치:</td><td><input type="text" name="endLocation"/></td></tr>
<tr><td align="right">
<button type="button" onclick="location.href='list'">목록보기 </button>
<button type="submit">반납 신청하기 </button>
</table>
</form>

</body>
</html>