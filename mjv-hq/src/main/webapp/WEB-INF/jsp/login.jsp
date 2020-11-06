<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MJV / Login</title>

    <!-- CSS -->
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../../css/login.css">

</head>

<body>
    <div class="container-principal">
        <div class="login">

            <picture class="login-imagem">
                <img src="../../img/assets/login.png" alt="Imagem de login">
            </picture>

            <h1 class="login-titulo">Bem-vindo!</h1>

            <p class="login-paragrafo">Digite seus dados de acesso.</p>
        
            <form action="/login" method="post" class="login-formulario">
                <input class="login-usuario" type="text" name="username" id=""username placeholder="Id de usuario" required>
                <input class="login-senha" type="password" name="password" id="password" placeholder="Senha" required>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/><!-- Adiciona o token csrf -->
                <button class="botao-padrao" type="submit">Login</button>
            </form>

            <button class="login-cadastrar botao-padrao">Cadastrar</button>
        </div>
    </div>
    
</body>

</html>