<!DOCTYPE html>
<html>
<head>

<title>Nuevo Docente</title>

<link rel="icon" type="image/png" href="imagenes/logo.png">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="container mt-5">

<h2>Registrar Docente</h2>

<form action="guardar_docente.php" method="POST">

<input type="text" name="nombre" class="form-control mb-3" placeholder="Nombre">

<input type="text" name="carrera" class="form-control mb-3" placeholder="Carrera">

      <select name="asignatura" class="form-control mb-3">
<option>Matematicas</option>
<option>Lenguaje</option>
<option>Ingles</option>
<option>Historia</option>
<option>Ciencias</option>
</select>

<input type="text" name="telefono" class="form-control mb-3" placeholder="Teléfono">

<input type="email" name="correo" class="form-control mb-3" placeholder="Correo">

<button class="btn btn-primary">Guardar</button>

<a href="docentes.php" class="btn btn-secondary">Volver</a>

</form>

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
