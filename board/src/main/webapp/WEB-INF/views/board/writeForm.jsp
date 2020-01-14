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
	
	<c:if test="${userId == null}">
		<script>
			alert('로그인 후 이용 가능합니다.');
			location.href="loginForm";
		</script>
	</c:if>

	<jsp:include page="/WEB-INF/views/include/nav.jsp"/>
	
		<div class="container container-custom align-self-center">
		<h2>글쓰기</h2>
		<form method="post" action="write">
		<table class="table">
			<tr><th>제목 : </th><td>
			<div class="input-group form-group">
			<input type="text" class="form-control" name="title" size="70">
			</div>
			</td></tr>
			<tr><th>내용 : </th><td><div class="input-group form-group"><textarea class="form-control" rows="10" name="content"></textarea></div></td></tr>
		</table>
			<input type="hidden" name="writerId" value="${userId}">
			<div class="d-flex justify-content-end">
			<input type="submit" class="btn btn-secondary" value="글쓰기">&nbsp;<input type="button" class="btn btn-outline-primary" value="취소" onclick="history.back();">
			</div>
		</form>
		</div>
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>