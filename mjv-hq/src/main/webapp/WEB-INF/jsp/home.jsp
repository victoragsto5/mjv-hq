<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Projeto Mjv</title>
		
		<!-- CSS -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

		<link rel="stylesheet" href="../../../resources/static/css/style.css">
		
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
	                    <li><a href="#">Sair</a></li>
	                </ul>
	            </nav><!-- Menu do topo -->
	        </header><!-- Cabeçalho -->

        <main class="container-principal" id="topo">
            <section class="container-interno">
            
                <form action="post" class="busca">
                    <input type="search" placeholder="O que você procura?" required class="caixa-pesquisa">
                    <input type="submit" value="&#x1F50D" class="botao-pesquisa">
                </form><!-- Busca -->
                
                <!--  Link do Backend -->
                <div class="backend">
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

                <div class="post">
                    <picture class="imagem-post">
                        <img src="./h1.jpg" alt="Imagem de post sobre hq do homem-aranha">
                    </picture><!-- Imagem do post -->

                    <div class="texto-post">
                        <h2 class="titulo-post">
                            HQ rara do Homem-Aranha é vendida por 1 milhão de Reais.
                        </h2>

                        <p class="descricao-post">
                            Na escrita de textos, é aconselhado o uso de parágrafos curtos ou médios. Não é aconselhado o uso de parágrafos longos, porque podem provocar a dispersão do leitor. Além disso, é essencial que haja coesão entre os diversos parágrafos de um texto, de forma a que as ideias não estejam soltas e descontextualizadas.
                        </p>
                    </div><!-- Texto do post -->
                </div><!-- Post -->
            </section>
        </main>

        <!-- Cria uma caixa de seleção -->
        <input type="checkbox" id="check" />

        <aside class="painel-esquerda" id="ativo">
            <h1 class="logo">Logo do projeto</h1>
            
            <picture class="imagem-perfil">
                <img src="./img-perfil.jpg" alt="Imagem de perfil da rede social">
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

            <div class="cards-hq">
                <picture class="hq-curtida">
                    <img src="../../../imgs/hq1.jpg" alt="Hq do homem-aranha">
                </picture>

                <p class="estrelas">
                    &#9733 &#9733 &#9733 &#9733 &#9734
                </p>
            </div><!-- Card HQ -->

            <div class="cards-hq">
                <picture class="hq-curtida">
                    <img src="./hq2.jpg" alt="Hq do homem-aranha">
                </picture>

                <p class="estrelas">
                    &#9733 &#9733 &#9734 &#9734 &#9734
                </p>
            </div><!-- Card HQ -->

            <div class="cards-hq">
                <picture class="hq-curtida">
                    <img src="./hq3.jpg" alt="Hq do homem-aranha">
                </picture>

                <p class="estrelas">
                    &#9733 &#9733 &#9733 &#9734 &#9734
                </p>
            </div><!-- Card HQ -->
        </aside><!-- Painel da direita -->
    </div>
	</body>
</html>