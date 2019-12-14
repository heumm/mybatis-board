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
		<div class="d-flex justify-content-end">
		<input type="button" class="btn btn-secondary mx-1" value="목록" onclick="location.href='board?page=${curPage}'">
		<c:if test="${userId == article.writerId}">
			<input type="button" class="btn btn-outline-dark mx-1" value="수정" onclick="location.href='#'">
			<input type="button" class="btn btn-outline-danger mx-1" value="삭제" onclick="location.href='#'">
		</c:if>
		</div>
		</div>
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>