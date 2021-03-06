<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="image" value="/resources/image" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>HousingSociety-${title}</title>
<script>
	window.contextRoot = '${contextRoot}'
</script>


<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">
<link rel="stylesheet" href="${css}/fontawesome-login.css">


</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->

		<%@include file="./shared/nevbar.jsp"%>

		<div class="content">
			<!--Page Content-->
			<c:if test="${userclickhome  == true}">
				<%@include file="./home/home.jsp"%>
			</c:if>

			<c:if test="${userclickadminlogin  == true}">
				<%@include file="./home/adminlogin.jsp"%>
			</c:if>
			<c:if test="${userclicklogin  == true}">
				<%@include file="./home/login.jsp"%>
			</c:if>

		</div>
		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.min.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
		<script src="${js}/effect-login.js"></script>
		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
