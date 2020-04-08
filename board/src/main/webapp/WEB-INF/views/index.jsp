<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--     <link rel="stylesheet" href="resources/vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.0/css/all.css" integrity="sha384-aOkxzJ5uQz7WBObEZcHvV5JvRW3TUc2rNPA7pe3AwnsUohiw1Vj2Rgx2KSOkF5+h" crossorigin="anonymous">
		<link rel="stylesheet" href="resources/css/lazy.css"> -->
  </head>
  
  <body>
    <c:if test="${signed != null}">
		<script>
			alert('${signed}');
			location.href="/"
		</script>
	</c:if>
	<jsp:include page="/WEB-INF/views/include/nav.jsp"/>
	<div class="container-fluid h-100 custom-bg">	
		<div class="jumbotron">
		  <h1>Bootstrap Tutorial</h1>
		  <p>Bootstrap is the most popular HTML, CSS...</p>
		  <c:choose>
				<c:when test="${userId != null}">
					<p>${userId }님 반갑습니다.</p>
				</c:when>
				<c:otherwise>
					<p>메인 페이지입니다.</p>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>

<!--     jQuery first, then Popper.js, then Bootstrap JS
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <script src="resources/vendor/popper/popper.min.js"></script>
    <script src="resources/vendor/bootstrap/bootstrap.min.js" ></script>

    optional plugins
    <script src="resources/vendor/nouislider/js/nouislider.min.js"></script>

      lazy javascript
    <script src="resources/js/lazy.js"></script> -->
  </body>
</html>