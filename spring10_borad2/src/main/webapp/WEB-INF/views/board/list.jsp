<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/list.jsp</title>
</head>
<body>
<h1>게시글목록</h1>
<table border="1" width="500">
	<tr>
		<th>글번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>내용</th>
		<th>작성일</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.num }</td>
			<td>${vo.writer }</td>
			<td><a href="/spring10/board/detail?num=${vo.num }"> ${vo.title }</a></td>
			<fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd" var="regdate"/>
			<td>${vo.content }</td>
			<td>${regdate}</td>
			<td><a href="/spring10/board/update?num=${vo.num }">수정</a></td>
			<td><a href="/spring10/board/delete?num=${vo.num }">삭제</a></td>
		</tr>
	</c:forEach>
</table>
<div>
	<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
		<a href="/spring10/board/list?pageNum=${i }&field=${field}&keyword=${keyword}">${i }</a>
	</c:forEach>
</div>
<br>
<br>
<br>
<br>
<form action="/spring10/board/list" method="post">
<div>
	<select name="field">
		<c:choose>
			<c:when test="${field=='writer' }">
				<option value="writer" checked='checked'>작성자</option>	
				<option value="title">제목</option>
				<option value="content">내용</option>
			</c:when>
			<c:when test="${field=='title' }">
				<option value="writer" >작성자</option>	
				<option value="title" checked='checked'>제목</option>
				<option value="content">내용</option>
			</c:when>
			<c:otherwise>
				<option value="writer" >작성자</option>	
				<option value="title">제목</option>
				<option value="content" checked='checked'>내용</option>
			</c:otherwise>
		</c:choose>
	</select>
	<input type="text" name="keyword" value="${keyword }">
	<input type="submit" value="검색">
</div>
</form>
</body>
</html>









