<?php

include("conexion.php");

$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$direccion = $_POST['direccion'];
$telefono = $_POST['telefono'];
$anio = $_POST['anio'];

$sql = "INSERT INTO alumnos(nombre_alumno,apellido_alumno,direccion_alumno,telefono_alumno,anio_escolar)
VALUES('$nombre','$apellido','$direccion','$telefono','$anio')";

mysqli_query($conexion,$sql);

header("Location:alumnos.php");

?>
