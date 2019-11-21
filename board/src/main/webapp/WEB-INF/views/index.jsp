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
	<c:if test="${signed != null}">
		<script>
			alert('${signed}');
			location.href="/controller"
		</script>
	</c:if>

	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<jsp:include page="/WEB-INF/views/include/nav.jsp"/>
	
	<link rel="stylesheet" type="text/css" href="resources/css/body.css" />
	<div class="wrap">
		<c:choose>
			<c:when test="${userId != null}">
				<p>${userId }님 반갑습니다.</p>
			</c:when>
			<c:otherwise>
				<p>메인 페이지입니다.</p>
			</c:otherwise>
		</c:choose>
	</div>
		
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>