<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/nav.jsp" />
	<div class="container-fluid h-100">
		<h2>회원가입 페이지입니다.</h2>
		<p>${idDuplicate}</p>
		<form method="post" action="signUp">
			<!-- with icon -->
			<div class="input-group form-group">
				<div class="input-group-prepend">
					<span class="input-group-text" id="basic-addon1"><i
						class="fas fa-user"></i></span>
				</div>
				<input type="text" class="form-control" name="id" placeholder="id"
					aria-label="Username" aria-describedby="basic-addon1">
			</div>
			<div class="input-group form-group">
				<div class="input-group-prepend">
					<span class="input-group-text" id="basic-addon1"><i
						class="fas fa-key"></i></span>
				</div>
				<input type="password" class="form-control" name="pw"
					placeholder="password" aria-label="Username"
					aria-describedby="basic-addon1">
			</div>

			<input type="submit" class="btn btn-primary" value="SignUp">
		</form>
	</div>

	<jsp:include page="/WEB-INF/views/include/footer.jsp" />


</body>
</html>