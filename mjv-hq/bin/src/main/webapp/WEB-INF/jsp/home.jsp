<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Home</title>
		
		<!-- CSS -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
		
		<!-- jQuery and JS bundle w/ Popper.js -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	</head>

	<body>
		<div class="container" style="width: 40%">
		   	<h1 class="text-center" style="padding-top: 40px;">MJV HQ Home</h1>
			<c:if test="${not empty list}">
				<ul>
					<c:forEach var="itemList" items="${list}">
						<li>${itemList}</li>
					</c:forEach>
				</ul>
			</c:if>
			<c:if test="${not empty listHQ}">
				<ul>
					<c:forEach var="itemHQ" items="${listHQ}">
						<li>Nome: ${itemHQ.nome} Capa: ${itemHQ.capa}</li>
					</c:forEach>
				</ul>
			</c:if>
		</div>
	</body>
</html>