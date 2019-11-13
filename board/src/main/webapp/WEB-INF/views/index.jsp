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
	<jsp:include page="include/header.jsp"/>
	<jsp:include page="include/nav.jsp"/>
	
	<link rel="stylesheet" type="text/css" href="<c:url value='resources/css/body.css'/>" />
	<div class="wrap">
		<p>메인 페이지입니다.</p>
	</div>
		
		
	<jsp:include page="include/footer.jsp"/>
</body>
</html>