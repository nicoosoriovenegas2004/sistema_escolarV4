
CREATE DATABASE sistema_escolar;

USE sistema_escolar;

CREATE TABLE usuarios(
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
apellido VARCHAR(50),
tipo_usuario VARCHAR(20),
correo VARCHAR(100),
password VARCHAR(100)
);

CREATE TABLE alumnos(
id INT AUTO_INCREMENT PRIMARY KEY,
nombre_alumno VARCHAR(50),
apellido_alumno VARCHAR(50),
direccion_alumno VARCHAR(100),
telefono_alumno VARCHAR(20),
anio_escolar VARCHAR(20)
);

CREATE TABLE docentes(
id INT AUTO_INCREMENT PRIMARY KEY,
nombre_docente VARCHAR(50),
carrera_docente VARCHAR(100),
asignatura VARCHAR(50),
telefono_docente VARCHAR(20),
correo_docente VARCHAR(100)
);
