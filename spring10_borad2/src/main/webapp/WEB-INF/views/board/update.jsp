<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
<h1>정보 수정</h1>
<form action="/spring10/board/update" method="post">
	선택한 글번호<input type="text" value="${vo.num }" name="num" readonly="readonly"><br>
	수정할 글 제목<input type="text" value="${vo.title }" name="title"><br>
	수정할 글 내용<input type="text" value="${vo.content }" name="content"><br>
	<input type="submit" value="제출">
</form>
</body>
</html>