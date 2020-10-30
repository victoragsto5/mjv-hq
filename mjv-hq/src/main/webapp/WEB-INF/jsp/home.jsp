<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Home / Projeto Mjv</title>
		
		<!-- CSS -->
		<link rel="stylesheet" href="../../css/style.css">
		
		<!-- jQuery and JS bundle w/ Popper.js -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	</head>

	<body>
		<div class="container-grid">
	        <header class="cabecalho">
	            <nav class="menu-principal">
	                <!-- Relaciona o icone "barras" a caixa selecionavel -->
	                <label for="check" class="botaocheck">
	                    <p class="abre-painel-icone">&#9776</p>
	                </label>
	                
	                <ul>
	                    <li><a href="#topo">Home</a></li>
	                    <li><a href="/mjv-hq/src/main/webapp/WEB-INF/jsp/login.jsp">Sair</a></li>
	                </ul>
	            </nav><!-- Menu do topo -->
	        </header><!-- Cabeçalho -->

        <main class="container-principal" id="topo">
            <section class="container-interno">
            
                <form action="post" class="busca">
                    <input type="search" placeholder="O que você procura?" required class="caixa-pesquisa">
                    <input type="submit" value="&#x1F50D" class="botao-pesquisa">
                </form><!-- Busca -->

                <div class="post">
                    <c:if test="${not empty listNews}">
                        <c:forEach var="itemNews" items="${listNews}">
                            <picture class="imagem-post">
                                <img src="img/${itemNews.imagem_news}" alt="Imagem de post sobre hq do homem-aranha">
                            </picture><!-- Imagem do post -->

                            <div class="texto-post">
                                <h2 class="titulo-post">
                                    ${itemNews.titulo_news}
                                </h2>
        
                                <p class="descricao-post">
                                    ${itemNews.descricao_news}
                                </p>
                            </div><!-- Texto do post -->
                        </c:forEach>
                    </c:if>
                </div><!-- Post -->
            </section>
        </main>

        <!-- Cria uma caixa de seleção -->
        <input type="checkbox" id="check" />

        <aside class="painel-esquerda" id="ativo">
            <h1 class="logo">Logo do projeto</h1>
            
            <picture class="imagem-perfil">
                <img src="../../img/img-perfil.jpg" alt="Imagem de perfil da rede social">
            </picture>

            <h2 class="nome-usuario">
                João da Silva
            </h2>

            <h3 class="id-usuario">
                @joao_silva2020
            </h3>

            <h4 class="quantidade-amigos">
                (10) Amigos
            </h4>
        </aside><!-- Painel da esquerda -->

        <aside class="painel-direita">
			<c:if test="${not empty listHQ}">
				<c:forEach var="itemHQ" items="${listHQ}">
					<div class="cards-hq">
						<img class="card-img-top" src="img/${itemHQ.capa}"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">${itemHQ.nome}</h5>
							<p class="card-text">${itemHQ.descricao}</p>
							<p class="estrelas">
                                &#9733 &#9733 &#9733 &#9733 &#9734
                            </p>
						</div>
					</div>
				</c:forEach>
			</c:if>
        </aside><!-- Painel da direita -->
    </div>
	</body>
</html>