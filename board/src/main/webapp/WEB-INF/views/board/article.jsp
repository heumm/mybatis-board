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
	<jsp:include page="/WEB-INF/views/include/nav.jsp"/>
		<div class="container container-custom align-self-center d-flex flex-column">
		
		<p>작성자 : ${article.writerId }</p>
		<h4 class="container p-3 border bg-light">제목 : ${article.title }</h4>
		
		<p>작성날짜 : ${article.regDate }</p>
		<p>내용 : <br>${article.content }</p>
		<input type="button" class="btn btn-secondary align-self-end" value="목록" onclick="location.href='board'">
		</div>
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>