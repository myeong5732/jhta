<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
</head>
<body>
<ul>
	<li><a href="/spring10/board/insert">글등록</a></li>
	<li><a href="/spring10/board/list">글목록</a></li>
</ul>
<img src="/spring10/resources/images/1.png">
<h2>최신글 5개</h2>
<table border="1" width="500">
	<tr>
		<th>글번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>내용</th>
		<th>작성일</th>
		
	</tr>
	<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.num }</td>
			<td>${vo.writer }</td>
			<td>${vo.title }</td>
			<td>${vo.content }</td>
			<td>${vo.regdate}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>