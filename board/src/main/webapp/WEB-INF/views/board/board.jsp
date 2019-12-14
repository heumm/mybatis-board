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
<jsp:include page="/WEB-INF/views/include/nav.jsp"/>
		<div class="container container-custom align-self-center flex-wrap">
		<h2>게시판</h2>
		<table class="table table-hover">
			<thead class="thead-light">
			<tr>
				<th>글번호</th><th>제목</th><th>글쓴이</th><th>작성일</th><th>조회수</th><th>추천</th><th>비추천</th>
			</tr>
			</thead>
			<c:choose>
				<c:when test="${!empty articles}">
					<c:forEach var="article" items="${articles}">
						<tr>
							<td>${article.boardNum}</td><td><a href="article?num=${article.boardNum}&page=${pagination.curPage}">${article.title}</a></td><td>${article.writerId}</td>
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
		<div class="d-flex justify-content-end">
			<input type="button" class="btn btn-secondary" value="글작성" onclick="location.href='writeForm'">
		</div>
		
		<div class="d-flex justify-content-center">
		
			<ul class="pagination">
					
				<c:choose>
					<c:when test="${pagination.curRange == 1}">
						<li class="page-item disabled"><a class="page-link">처음</a></li>
						<li class="page-item disabled"><a class="page-link">이전</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="board?page=1">처음</a></li>
						<li class="page-item"><a class="page-link" href="board?page=${pagination.prevPage}">이전</a></li>
					</c:otherwise>
				</c:choose>
				
				<c:forEach var="pageNum" begin="${pagination.startPage}"
					end="${pagination.endPage}">
					<c:choose>
						<c:when test="${pageNum == pagination.curPage}">
							<li class="page-item active"><a class="page-link">${pageNum}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="board?page=${pageNum}">${pageNum}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${pagination.curRange == pagination.rangeCnt}">
						<li class="page-item disabled"><a class="page-link">끝</a></li>
						<li class="page-item disabled"><a class="page-link">다음</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="board?page=${pagination.pageCnt}">끝</a></li>
						<li class="page-item"><a class="page-link" href="board?page=${pagination.nextPage}">다음</a></li>
					</c:otherwise>
				</c:choose>
				
			</ul>
			</div>
		</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>