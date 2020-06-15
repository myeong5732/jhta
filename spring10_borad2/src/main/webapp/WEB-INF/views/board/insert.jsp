<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/board/insert.jsp</title>
</head>
<body>
<h1>글작성</h1>
<form action="/spring10/board/insert" method="post">
	작성자<br>
	<input type="text" name="writer"><br>
	제목<br>
	<input type="text" name="title"><br>
	내용<br>
	<textarea cols="50" rows="5" name="content"></textarea><br>
	<input type="submit" value="등록"><br>
</form>
</body>
</html>