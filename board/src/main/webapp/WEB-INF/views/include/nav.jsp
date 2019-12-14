<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet"
	href="resources/vendor/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.0/css/all.css"
	integrity="sha384-aOkxzJ5uQz7WBObEZcHvV5JvRW3TUc2rNPA7pe3AwnsUohiw1Vj2Rgx2KSOkF5+h"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/lazy.css">
<link rel="stylesheet" href="resources/css/custom.css">

</head>
<body>
	<%-- 
<nav class="navbar navbar-expand-md navbar-light bg-light navbar-expand-md">
        <a class="navbar-brand" href="/controller">Home</a>
        <ul class="navbar-nav w-100 align-items-center">
            <li class="nav-item"><a href="board" class="nav-link">게시판</a></li>
            <li class="nav-item"><a href="memberInfo" class="nav-link">회원 정보</a></li>
            <c:choose>
				<c:when test="${userId == null }">
					<li class="nav-item ml-md-auto"><a href="loginForm" class="btn btn-sm btn-primary">로그인</a></li>
				</c:when>
				<c:otherwise>
					
					<li class="nav-item ml-md-auto">
						${userId }님 반갑습니다.<a href="logout" class="btn btn-sm btn-secondary">로그아웃</a>
					</li>
				</c:otherwise>
			</c:choose>
        </ul>
</nav>
 --%>

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand d-flex align-items-center" href="/controller">Home</a>

			<div class="collapse navbar-collapse text-center"
				id="navbarNavDropdown-1">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="board">게시판
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="memberInfo">회원
							정보</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#a"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Services </a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="#">Design</a> <a
								class="dropdown-item" href="#">Development</a> <a
								class="dropdown-item" href="#">Marketing</a>
						</div></li>
				</ul>



			</div>
			<c:choose>
				<c:when test="${userId == null }">
				
					<div class="ml-auto">
					<a class="btn btn-outline-light ml-auto" href="loginForm">SignIn</a>
					<a class="btn btn-light" href="signForm">SignUp</a>
					</div>
				</c:when>
				<c:otherwise>
					<span class="text-light">${userId }님 반갑습니다.</span><a class="btn btn-light ml-auto" href="logout">SignOut</a>
				</c:otherwise>
			</c:choose>
			<button class="navbar-toggler ml-1" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown-1"
				aria-controls="navbarNavDropdown-1" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>





	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/popper/popper.min.js"></script>
	<script src="resources/vendor/bootstrap/bootstrap.min.js"></script>

	<!-- optional plugins -->
	<script src="resources/vendor/nouislider/js/nouislider.min.js"></script>

	<!--   lazy javascript -->
	<script src="resources/js/lazy.js"></script>
</body>
</html>