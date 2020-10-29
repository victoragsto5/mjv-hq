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
		<div class="container">
			<h1 class="text-center" style="padding-top: 40px; padding-bottom: 40px;">MJV HQ Home</h1>
		<div class="row">
			<c:if test="${not empty listHQ}">
					<c:forEach var="itemHQ" items="${listHQ}">
				<div class="col-sm-4">
					<div class="card" style="width: 18rem;">
						<img class="card-img-top" src="img/${itemHQ.capa}"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">${itemHQ.nome}</h5>
							<p class="card-text">${itemHQ.descricao}</p>
							<a href="#" class="btn btn-primary">Ver Mais</a>
						</div>
					</div>
					</div>
					</c:forEach>
			</c:if>
		</div>

	</div>
	</body>
</html>