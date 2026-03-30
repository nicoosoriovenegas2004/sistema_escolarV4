<?php
include("conexion.php");

if(isset($_GET['id'])){
    $alumno_id = $_GET['id'];

    $sql = "SELECT * FROM alumnos WHERE id = ?";
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param("i", $alumno_id);
    $stmt->execute();
    $resultado = $stmt->get_result();
    $alumno = $resultado->fetch_assoc();
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Ingreso de Notas</title>

<link rel="icon" type="image/png" href="imagenes/logo.png">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
.form-control {
    background-color: #535353 !important;
    color: #ffffff !important;
    border: 1px solid #ffffff;
}

.form-control::placeholder {
    color: #cccccc;
}
        body {
            margin: 0;
            height: 100vh;
            background-image: url("imagenes/fondo6.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }


        .d-flex input[type="text"] {
            max-width: 250px;
        }

        h2 {
            color: #ffffff;
        }
    </style>
</head>

<body class="container mt-5">

<h2>Ingreso de Notas</h2>

<?php if(isset($alumno)): ?>

<h4>Alumno: <?php echo $alumno['nombre_alumno'] . " " . $alumno['apellido_alumno']; ?></h4>

<form action="guardar_nota.php" method="POST">


    <input type="hidden" name="alumno_id" value="<?php echo $alumno['id']; ?>">

    <div class="mb-3">
        <select name="asignatura" class="form-control mb-3">
<option>Matematicas</option>
<option>Lenguaje</option>
<option>Ingles</option>
<option>Historia</option>
<option>Ciencias</option>
</select>
    </div>

    <div class="mb-3">
        <label>Nota</label>
        <input type="number" step="0.1" name="nota" class="form-control" required>
    </div>

    <button class="btn btn-success">Guardar Nota</button>

    <a href="alumnos.php" class="btn btn-secondary">Volver</a>

</form>

<?php else: ?>
    <div class="alert alert-danger">Alumno no encontrado</div>
<?php endif; ?>

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