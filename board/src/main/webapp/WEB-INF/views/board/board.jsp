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
		<table border="1px">
			<tr>
				<th>글번호</th><th>제목</th><th>글쓴이</th><th>작성일</th><th>조회수</th><th>추천</th><th>비추천</th>
			</tr>
			
			<c:choose>
				<c:when test="${!empty articles}">
					<c:forEach var="article" items="${articles}">
						<tr>
							<td>${article.boardNum}</td><td><a href="article?num=${article.boardNum}">${article.title}</a></td><td>${article.writerId}</td>
							<td>${article.regDate}</td><td>${article.viewCount}</td><td>${article.recommend}</td><td>${article.unrecommend}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="7" align="center">없음</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
		<input type="button" value="글작성" onclick="location.href='writeForm'">
	</div>
		
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>