<?php
session_start();
if(!isset($_SESSION['usuario'])){
header("Location:login.php");
}
?>

<!DOCTYPE html>

<html>
<head>

<title>Dashboard</title>

<link rel="icon" type="image/png" href="imagenes/logo.png">

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

 <style>

  .card {
    border: none;
    border-radius: 15px;
    background: rgba(0, 0, 0, 0.7);
    backdrop-filter: blur(10px);
}

  .btn-danger {
    background: #ff0000d5;
    color: white;
    border-radius: 10px;
    transition: 0.3s;
}

.btn-danger:hover {
    background: #0ecf75e5;
}

.btn-primary {
    background: #00b4d8;
    color: white;
    border-radius: 10px;
    transition: 0.3s;
}

.btn-primary:hover {
    background: #0ecf75e5;
}
.card h5 {
    color: #ffffff; /* blanco */
}
</style>
</head>

<body>

<nav class="navbar navbar-dark bg-dark">
<div class="container">

<img src="imagenes/logo.png" class="logo-inicio mb-3"width="140" height="80">

<span class="navbar-brand" style="
    font-family: 'Inter', sans-serif;
    font-size: 30px;
    font-weight: 700;
    color: #fdfffffd;
    letter-spacing: 1.5px;
    text-shadow: 2px 2px 6px rgba(0, 238, 255, 0.98);
">
    Sistema Escolar
</span>


<a href="logout.php" class="btn btn-danger">Cerrar Sesion</a>

</div>
</nav>

<div class="container mt-5">

<div class="row">

<div class="col-md-3">
<div class="card shadow text-center">
<div class="card-body">

<h5>Alumnos</h5>
<a href="alumnos_usuario.php" class="btn btn-primary">administrar</a>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card shadow text-center">
<div class="card-body">

<h5>Docentes</h5>
<a href="docentes_usuario.php" class="btn btn-primary">administrar</a>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card shadow text-center">
<div class="card-body">

<h5>Alumnos por Asignatura</h5>
<a href="grafico_notas_usuario.php" class="btn btn-primary">Grafico</a>
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
<footer style="text-align:center; padding:15px; background:#000; color:#fff; position:fixed; bottom:0; width:100%; font-size:14px;">
    © <?php echo date("Y"); ?> Todos los derechos reservados.
</footer>

</body>
</html>



