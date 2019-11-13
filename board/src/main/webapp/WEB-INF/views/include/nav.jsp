<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	ul {
		list-style-type: none;
		display: flex;
		justify-content: flex-end;
	}
	ul li {
		margin-right: 20px; 
		flex-flow: row;
		
	}
</style>
</head>
<body>
<hr>
	<nav>
		<ul>
			<li>
				<a href="home">HOME</a>
			</li>
			<li>
				<a href="board">게시판</a>
			</li>
			<li>
				<a href="memberinfo">회원 정보</a>
			</li>
			<li>
				<a href="loginForm">로그인</a>
			</li>
		</ul>
	</nav>
<hr>
</body>
</html>