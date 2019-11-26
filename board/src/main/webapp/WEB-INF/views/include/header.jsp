<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="resources/js/jquery_3.2.1.min.js"></script>
<script src="resources/js/popper.min.js"></script>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
</head>
<body>
	<link rel="stylesheet" type="text/css" href="resources/css/header.css" />
	<nav
		class="navbar navbar-expand-md navbar-light bg-light navbar-expand-md">
		<a class="navbar-brand" href="/controller">Home</a>
		<ul class="navbar-nav w-100">
			<li class="nav-item"><a href="board" class="nav-link">게시판</a></li>
			<li class="nav-item"><a href="memberInfo" class="nav-link">회원 정보</a></li>
			<c:choose>
				<c:when test="${userId == null }">
					<li class="nav-item"><a href="loginForm" class="nav-link">로그인</a></li>
				</c:when>
				<c:otherwise>
					<li class="nav-item"><a href="logout" class="nav-link">로그인</a></li>
				</c:otherwise>
			</c:choose>
			<li class="nav-item ml-md-auto"><a href="https://themestr.app/"	class="nav-link">Themestr.app</a></li>
		</ul>
	</nav>


	<div class="header-wrap">
		<h1>header</h1>
	</div>
</body>
</html>