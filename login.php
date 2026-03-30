<?php
session_start();
include("conexion.php");

if(isset($_POST['correo'])){

    $correo = $_POST['correo'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM usuarios WHERE correo = ?";
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param("s", $correo);
    $stmt->execute();

    $resultado = $stmt->get_result();

    if($resultado->num_rows === 1){

        $usuario = $resultado->fetch_assoc();

        if(password_verify($password, $usuario['password'])){

            $_SESSION['usuario'] = $usuario['correo'];
            $_SESSION['tipo_usuario'] = $usuario['tipo_usuario'];

            if($usuario['tipo_usuario'] == 'Administrador'){
                header("Location: dashboard.php");
            } else {
                header("Location: dashboard_usuario.php");
            }

            exit();

        } else {
            $error = "Contraseña incorrecta";
        }

    } else {
        $error = "Usuario no encontrado";
    }

    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>

<title>Login</title>

<link rel="icon" type="image/png" href="imagenes/logo.png">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    margin: 0;
    height: 100vh;
    background: linear-gradient(135deg, #0d1b2a, #1b263b, #415a77);
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: 'Segoe UI', sans-serif;
}

.card {
    border: none;
    border-radius: 15px;
    background: rgba(0, 0, 0, 0.7);
    backdrop-filter: blur(10px);
}

h3 {
    color: #ffffff;
    font-weight: bold;
    text-align: center;
}

.form-control {
    border-radius: 10px;
    border: 1px solid #b9b9b9;
    transition: 0.3s;
}

.form-control:focus {
    border-color: #0ef1c0;
    box-shadow: 0 0 8px #00b4d8;
}

.btn-login {
    background: #00b4d8;
    color: white;
    border-radius: 10px;
    transition: 0.3s;
}

.btn-login:hover {
    background: #0ecf75e5;
}

.btn-link {
    color: #cececee7;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

.logo {
    display: block;
    margin: 0 auto 15px;
}

.alert {
    border-radius: 10px;
}
</style>
</head>

<body class="bg-light">

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-4">

<div class="card shadow">

<div class="card-body">

<img src="imagenes/logo.png" class="logo" width="159" height="100">

<h3>Iniciar Sesión</h3>

<?php if(isset($error)){ echo "<div class='alert alert-danger'>$error</div>"; }?>

<form method="POST">

<input type="email" name="correo" class="form-control mb-3" placeholder="Correo" required>

<input type="password" name="password" class="form-control mb-3" placeholder="Contraseña" required>

<button class="btn btn-success w-100">Ingresar</button>

<a href="recuperar.php" class="btn btn-link">¿Olvidaste tu contraseña?</a>

</form>

</div>
</div>
</div>
</div>
</div>

<style>
body {
  margin: 0;
  height: 100vh;
  background-image: url("imagenes/fondo6.jpg");
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}
</style>

</body>
</html>