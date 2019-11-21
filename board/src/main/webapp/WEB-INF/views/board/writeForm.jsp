<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<form method="post" action="write">
			<p>제목 : </p><input type="text" name="title" size="70"><br>
			<p>내용 : </p><textarea rows="10" cols="80" name="content"></textarea><br>
			<input type="hidden" name="writerId" value="${userId}">
			<input type="submit" value="글쓰기">
		</form>
	</div>
		
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>