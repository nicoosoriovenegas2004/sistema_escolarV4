<?php
include("conexion.php");

// Obtener datos del formulario
$id = $_POST['id'];
$nombre = $_POST['nombre_alumno'];
$apellido = $_POST['apellido_alumno'];
$direccion = $_POST['direccion_alumno'];
$telefono = $_POST['telefono_alumno'];
$anio = $_POST['anio_escolar'];

// Actualizar datos
$sql = "UPDATE alumnos SET 
        nombre_alumno='$nombre',
        apellido_alumno='$apellido',
        direccion_alumno='$direccion',
        telefono_alumno='$telefono',
        anio_escolar='$anio'
        WHERE id='$id'";

// Ejecutar consulta
$resultado = mysqli_query($conexion, $sql);

// Verificar si funcionó
if($resultado){
    header("Location: alumnos.php"); // vuelve a la lista
} else {
    echo "Error al actualizar: " . mysqli_error($conexion);
}
?>