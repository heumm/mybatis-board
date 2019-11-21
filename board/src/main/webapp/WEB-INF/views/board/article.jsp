<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<jsp:include page="/WEB-INF/views/include/nav.jsp"/>
	
	<link rel="stylesheet" type="text/css" href="resources/css/body.css" />
	<div class="wrap">
		<p>제목 : ${article.title }</p>
		<p>작성자 : ${article.writerId }</p>
		<p>작성날짜 : ${article.regDate }</p>
		<p>내용 : <br>${article.content }</p>
		<input type="button" value="목록" onclick="location.href='board'">
	</div>
		
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>