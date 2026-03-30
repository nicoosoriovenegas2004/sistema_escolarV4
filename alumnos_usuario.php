<?php
include("conexion.php");

$buscar = isset($_GET['buscar']) ? $_GET['buscar'] : '';

if($buscar != ''){
    $sql = "SELECT * FROM alumnos 
            WHERE id LIKE'%$buscar%' 
            OR nombre_alumno LIKE '%$buscar%' 
            OR apellido_alumno LIKE '%$buscar%' 
            OR asignatura LIKE '%$buscar%'";
} else {
    $sql = "SELECT * FROM alumnos";
}

$resultado=mysqli_query($conexion,$sql);
?>

<!DOCTYPE html>
<html>
    <head>

    <title>Alumnos</title>
   <link rel="icon" type="image/png" href="imagenes/logo.png">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            height: 100vh;
            background-image: url("imagenes/fondo6.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        table {
            width: 100%;
            background-color: #000 !important;
            color: #fff !important;
        }

        table th, table td {
            border: 1px solid #fff !important;
            text-align: center;
            vertical-align: middle;
            background-color: #535353 !important; 
            color: #fff !important; 
        }

        table th {
            background-color: #535353 !important; 
        }

        .btn-warning { color: #000 !important; }
        .btn-danger, .btn-success, .btn-info, .btn-primary, .btn-secondary {
            color: #fff !important;
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

<H2>Gestion de Alumnos</H2>

<div class="d-flex justify-content-between align-items-center mb-3">

<div class="d-flex gap-2 mb-3">
    
    <a href="dashboard_usuario.php" class="btn btn-secondary">Volver</a>

    <a href="exportar_excel.php" class="btn btn-primary">Exportar a Excel</a>

</div>

    <form method="GET" class="d-flex">
        <input 
            type="text" 
            name="buscar" 
            class="form-control me-2" 
            placeholder="Buscar Alumno..."
            value="<?php echo $buscar; ?>"
        >
        <button type="submit" class="btn btn-primary">Buscar</button>
    </form>

</div>

<table class="table table-bordered">

<tr>
<th>ID </th>
<th>Nombre </th>
<th>Apellido </th>
<th>Direccion </th>
<th>Telefono </th>
<th>Año </th>
<th>Acciones </th>

<?php while($fila=mysqli_fetch_array($resultado)){ ?>

    <tr>
        <td><?php echo $fila ['id'];?></td>
        <td><?php echo $fila ['nombre_alumno'];?></td>
        <td><?php echo $fila ['apellido_alumno'];?></td>
        <td><?php echo $fila ['direccion_alumno'];?></td>
        <td><?php echo $fila ['telefono_alumno'];?></td>
        <td><?php echo $fila ['anio_escolar'];?></td>

<td>

    <a href="ver_notas_usuario.php?id=<?php echo $fila['id']; ?>" class="btn btn-info btn-sm">Ver Notas</a>

</tr>

</td>

<?php

} ?>
</table>

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


