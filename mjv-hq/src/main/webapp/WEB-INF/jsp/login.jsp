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

            <h1 class="login-titulo">Bem-Vindo!</h1>

            <p class="login-paragrafo">Digite seus dados de acesso.</p>
        
            <form action="post" class="login-formulario">
                <input class="login-usuario" type="text" name="id" placeholder="Id de usuario ou Nome" required>
                <input class="login-senha" type="password" name="senha" id="senha" placeholder="Senha" required>

                <button class="botao-padrao">Login</button>
            </form>

            <button class="login-cadastrar botao-padrao">Cadastrar</button>
        </div>
    </div>
    
</body>

</html>