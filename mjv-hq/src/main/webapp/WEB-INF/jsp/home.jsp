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
		
		<!-- jQuery and JS bundle w/ Popper.js -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	
		<!--  CSS do projeto -->
		<style>
			/*---------------------------------
			Padrões do navegador
			---------------------------------*/
			@charset "UTF-8";
			
			html {
			    scroll-behavior: smooth;
			    font-size: 62.5%;
			    line-height: 1.2;
			}
			
			* {
			    padding: 0;
			    margin: 0;
			    box-sizing: border-box;
			    font-family: Arial, Helvetica, sans-serif;
			    text-decoration: none;
			}
			
			/*---------------------------------
			CSS Grid layout
			---------------------------------*/
			.container-grid {
			    display: grid;
			    grid-template-columns: 20% 60% 20%;
			    grid-template-rows: auto;
			}
			
			.container-interno {
			    max-width: 100%;
			    width: 90%;
			    margin: 0 auto;
			}
			
			/*---------------------------------
			Topo - cabeçalho
			---------------------------------*/
			.cabecalho {
			    display: flex;
			    align-items: center;
			    background-color: rgb(151, 184, 212);
			    position: fixed;
			    top: 0;
			    right: 0;
			    left: 0;
			    bottom: 0;
			    z-index: 1000;
			}
			
			.cabecalho ul li a {
			    color: #000000;
			}
			
			.cabecalho ul li a:hover {
			    color: #ffffff;
			}
			
			/*---------------------------------
			Feed de noticias
			---------------------------------*/
			.busca {
			    margin-bottom: 2rem;
			    display: flex;
			    justify-content: center;
			}
			
			.busca > input {
			    border-radius: 2rem;
			    border: none;
			    outline: none;
			}
			
			.busca .caixa-pesquisa {
			    margin-right: 1rem;
			    background-color: rgb(192, 181, 202);
			    padding: 0 2rem;
			    color: #ffffff;
			}
			
			.busca .caixa-pesquisa::placeholder {
			    color: aliceblue;
			}
			
			.botao-pesquisa {
			    background-color: rgb(160, 141, 177);
			    color: #ffffff;
			    width: 10%;
			    height: 3rem;
			    cursor: pointer;
			}
			
			.container-principal {
			    background: #f3f3f3;
			}
			
			/*---------------------------------
			Backend
			---------------------------------*/
			.backend {
				margin: 5rem auto;
			    text-align: left;
			    max-width: 59rem;
			    display: flex;
			    justify-content: center;
			    font-size: 1.5rem;
			}
			
			/*---------------------------------
			Post
			---------------------------------*/
			.imagem-post {
			    display: flex;
			    justify-content: center;
			}
			
			.imagem-post > img {
			    border-radius: 20px;
			    margin-bottom: 2rem;
			    max-width: 100%;
			    max-height: 40rem;
			}
			
			.texto-post {
			    text-align: left;
			    max-width: 59rem;
			    margin: 0 auto;
			}
			
			.titulo-post {
			    font-size: 2rem;
			    margin-bottom: 1rem;
			}
			
			.descricao-post {
			    font-size: 1.5rem;
			    margin-bottom: 5rem;
			}
			
			/*---------------------------------
			Painel da esquerda
			---------------------------------*/
			.imagem-perfil img{
			    border-radius: 100%;
			    object-fit: cover;
			    margin-top: 2rem;
			}
			
			.nome-usuario {
			    margin-top: 2rem;
			}
			
			.id-usuario {
			    color: rgb(124, 124, 124);
			    font-size: 1.1rem;
			}
			
			.quantidade-amigos {
			    margin-top: 1rem;
			}
			
			/*---------------------------------
			Painel da direita
			---------------------------------*/
			.cards-hq {
			    max-height: 30rem;
			    width: 15rem;
			}
			
			.hq-curtida img {
			    border-radius: 2rem;
			    max-height: 20rem;
			    width: 100%;
			
			 
			}
			
			.estrelas {
			    text-align: center;
			    font-size: 2rem;
			    color: rgb(41, 128, 15);
			    margin-bottom: 2rem;
			}
			
			/*---------------------------------
			Responsivo
			---------------------------------*/
			@media screen and (min-width: 0px) {
			    .cabecalho {
			        height: 5rem;
			        justify-content: center;
			        grid-column: 1 / 4;
			        grid-row: 1 / 2;
			    }
			
			    .menu-principal {
			        display: flex;
			    }
			
			    .cabecalho ul li{
			        margin-left: 5rem;
			        font-size: 2rem;
			        display: inline-block;
			    }
			
			    #ativo {
			        background: #ffffff;
			        height: 100%;
			        width: 90%;
			        max-width: 25rem;
			        position: fixed;
			        z-index: 1;
			        top: -3rem;
			        left: -100%;
			        margin: 5rem 0;
			        transition: left 0.3s ease-out;
			    }
			    
			    #check:checked ~ #ativo {
			        left: 0;
			        display: flex;
			        flex-direction: column;
			        align-items: center;
			    }
			
			    .botaocheck {
			        cursor: pointer;
			        font-size: 2rem;
			        transition: all 0.3s;
			        display: block;
			    }
			
			    #check {
			        display: none;
			    }
			
			    .busca .caixa-pesquisa {
			        max-width: 80%;
			        width: 100%;
			    }
			
			    .busca > input {
			        min-width: 20%;
			        height: 5rem;
			    }
			
			    .logo {
			        margin-top: 6rem;
			    }
			
			    .imagem-perfil img {
			        height: 10rem;
			        width: 10rem;
			    }
			
			    .painel-direita {
			        display: none;
			        grid-column: none;
			        grid-row: none;
			    }
			
			    .container-principal {
			        grid-column: 1 / 4;
			        grid-row: 1 / 2;
			        padding: 8rem 0;
			    }
			
			}
			
			@media screen and (min-width: 700px) {
			    .cabecalho {
			        height: 3rem;
			    }
			
			    .menu-principal {
			        margin: 0 auto;
			        width: 100%;
			        display: flex;
			        justify-content: flex-end;
			        padding: 0 10rem;
			    }
			
			    .botaocheck {
			        display: none;
			    }
			
			    #ativo {
			        max-width: 20%;
			        left: 0;
			        margin-top: 6rem;
			        background: #ffffff;
			    }
			
			    .painel-esquerda {
			        min-width: 20%;
			        left: 0;
			        display: flex;
			        flex-direction: column;
			        align-items: center;
			        position: fixed;
			        margin-top: 3rem;
			        grid-column: 1 / 2;
			        grid-row: auto;
			    }
			
			    .container-principal {
			        grid-column: 2 / 4;
			        grid-row: auto;
			    }
			
			    .busca > input {
			        min-width: 7%;
			        height: 3rem;
			    }
			
			    .busca .caixa-pesquisa {
			        max-width: 70%;
			        width: 100%;
			    }
			}
			
			@media screen and (min-width: 900px) {
			    .cabecalho ul li{
			        margin-left: 2rem;
			        font-size: 1.5rem;
			    }
			
			    .logo {
			        margin-top: 3rem;
			    }
			
			    .imagem-perfil img {
			        height: 13rem;
			        width: 13rem;
			    }
			
			    .container-principal {
			        grid-column: 2 / 3;
			        padding: 5rem 0;
			    }
			    
			    .painel-direita {
			        min-width: 20%;
			        display: flex;
			        flex-direction: column;
			        align-items: center;
			        grid-column: 3 / 4;
			        grid-row: auto;
			        margin-top: 6rem;
			    }
			}
		</style>
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
                    <img src="./hq1.jpg" alt="Hq do homem-aranha">
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