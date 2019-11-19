<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<jsp:include page="/WEB-INF/views/include/nav.jsp"/>
	
	<link rel="stylesheet" type="text/css" href="resources/css/body.css" />
	<div class="wrap">
		<h2>회원가입 페이지입니다.</h2>
		<p>${idDuplicate}</p>
		<div>
			<form method="post" action="signUp">
				<input type="text" name="id" placeholder="아이디"><br>
				<input type="password" name="pw" placeholder="비밀번호"><br>
				<input type="submit" value="회원가입">
				
			</form>
			
		</div>
	</div>
	
	
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>


</body>
</html>