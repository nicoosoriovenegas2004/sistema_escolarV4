<?php
session_start();
?>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Sistema Escolar</title>

<link rel="icon" type="image/png" href="imagenes/logo.png">

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body {
    margin: 0;
    height: 100vh;
    background-image: url("imagenes/fondo6.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* TARJETA */
.card-login {
    background: rgba(0, 0, 0, 0.7);
    color: #fff;
    border-radius: 15px;
    padding: 40px 30px;
    max-width: 400px;
    width: 100%;
    text-align: center;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.5);
}

/* LOGO CENTRADO */
.logo {
    display: block;
    margin: 0 auto 15px auto;
}

/* TÍTULO */
.card-login h1 {
    font-weight: 700;
    margin-bottom: 20px;
    color: #ffffff;
}

/* TEXTO */
.card-login p {
    color: #ddd;
    margin-bottom: 30px;
    font-size: 16px;
}

/* BOTÓN */
.btn-login {
    background-color: #0cc2f0;
    color: #000;
    font-weight: 600;
    width: 100%;
    border-radius: 10px;
    transition: 0.3s;
}

.btn-login:hover {
    background-color: #0ecf75e5;
    color: #fff;
}

</style>

</head>

<body>

<div class="card card-login">

    <img src="imagenes/logo.png" class="logo" width="159" height="100">

    <h1>Sistema Escolar</h1>
    <p>Panel de Acceso</p>

    <a href="login.php" class="btn btn-login">Iniciar Sesión</a>

</div>

</body>
</html>