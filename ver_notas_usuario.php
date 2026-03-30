<?php
include("conexion.php");

if(!isset($_GET['id'])){
    die("ID no proporcionado");
}

$id = $_GET['id'];
?>

<!DOCTYPE html>
<html>
<head>
    <title>Notas por asignatura</title>

    <link rel="icon" type="image/png" href="imagenes/logo.png">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    .card {
    background-color: #525252;
    color: #ffffff;
    border: 1px solid #ffffff;
}

.card h3 {
    color: #ffffff;
}
        body {
            margin: 0;
            height: 100vh;
            background-image: url("imagenes/fondo6.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }


        table th, table td {
            border: 1px solid #ffffff !important;
            text-align: center;
            vertical-align: middle;
            background-color: #535353 !important; /* asegura fondo negro en todas las celdas */
            color: #ffffff !important; /* asegura letras blancas en todas las celdas */
        }


        .d-flex input[type="text"] {
            max-width: 250px;
        }

        h2 {
            color: #ffffff;
        }
        .card {
            color #535353;
        }
    </style>
</head>

<body>

<div class="d-flex justify-content-center align-items-center vh-100">

<div class="card shadow" style="width: 700px;">
<div class="card-body">

<h3 class="text-center mb-4">Notas por asignatura</h3>

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Asignatura</th>
            <th>Notas</th>
        </tr>
    </thead>
    <tbody>

<?php
$sql = "SELECT asignatura, nota 
        FROM notas 
        WHERE alumno_id = ? 
        ORDER BY asignatura";

$stmt = $conexion->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();
$resultado = $stmt->get_result();

$notas_por_asignatura = [];

while($row = $resultado->fetch_assoc()){
    $notas_por_asignatura[$row['asignatura']][] = $row['nota'];
}

foreach($notas_por_asignatura as $asignatura => $notas){
?>

<tr>
    <td><?php echo $asignatura; ?></td>
    <td><?php echo implode(" | ", $notas); ?></td>
</tr>

<?php } ?>

    </tbody>
</table>

<div class="text-center mt-3">
    <a href="alumnos_usuario.php" class="btn btn-secondary">Volver</a>
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