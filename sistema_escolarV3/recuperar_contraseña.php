<?php
include("conexion.php");

if(isset($_POST['correo'])){
    $correo = $_POST['correo'];

    // Generar token único
    $token = bin2hex(random_bytes(50));

    // Guardar token en la BD
    $sql = "UPDATE usuarios SET token='$token' WHERE correo='$correo'";
    mysqli_query($conexion, $sql);

    // Link de recuperación
    $link = "http://localhost/sistema_escolarV2/restablecer.php?token=$token";

    // Enviar correo (versión simple)
    $asunto = "Recuperar contraseña";
    $mensaje = "Haz clic en este enlace para cambiar tu contraseña: $link";
    $cabeceras = "From: tucorreo@gmail.com";

    mail($correo, $asunto, $mensaje, $cabeceras);

    echo "Revisa tu correo";
}
?>

<form method="POST">
    <input type="email" name="correo" placeholder="Ingresa tu correo" required>
    <button type="submit">Enviar</button>
</form>