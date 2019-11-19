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
<jsp:include page="../include/header.jsp"/>
	<jsp:include page="../include/nav.jsp"/>
	
	<link rel="stylesheet" type="text/css" href="resources/css/body.css" />
	<div class="wrap">
		<table border="1px">
			<tr>
				<th>글번호</th><th>제목</th><th>글쓴이</th><th>작성일</th><th>조회수</th><th>추천</th><th>비추천</th>
			</tr>
		</table>
	</div>
		
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>