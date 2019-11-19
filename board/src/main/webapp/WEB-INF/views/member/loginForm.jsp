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
		<h2>로그인 페이지입니다.</h2>
		<p>${idErr }${pwErr }</p>
		<div>
			<form method="post" action="login">
				<input type="text" name="id" placeholder="아이디"><br>
				<input type="password" name="pw" placeholder="비밀번호"><br>
				<input type="submit" value="로그인">
				
			</form>
			<a href="signForm">회원가입</a>
		</div>
	</div>
		
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>