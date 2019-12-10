<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/nav.jsp" />



		<div class="container-fluid h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="row">
				<h2>회원 정보</h2>
				<table class="table">
					<thead class="thead-light">
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>회원 탈퇴</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach var="dto" items="${list}">
						<c:choose>
							<c:when test="${userId == dto.id}">
								<tr>
									<td>${dto.id}</td>
									<td>${dto.pw}</td>
									<td>
										<a href="leave?id=${dto.id}"
											onclick="return confirm('정말로 탈퇴하시겠습니까?');">회원 탈퇴</a>
									</td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<td>${dto.id}</td>
									<td>******</td>
									<td>회원 탈퇴</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					</tbody>
				</table>
			</div>
			</div>
		</div>


	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>