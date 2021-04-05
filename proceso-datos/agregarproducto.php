<?php

include("conexionbd.php");

$nombre = $_POST["nombre"];
$precio = $_POST["precio"];
$descripcion = $_POST["descripcion"];
$categoria = $_POST["categoria"];

$sentencia = $mbd->prepare("INSERT INTO productos (nombre, precio, descripcion) VALUES (:nombre, :precio, :descripcion)");
$sentencia->bindParam(':nombre', $nombre);
$sentencia->bindParam(':precio', $precio);
$sentencia->bindParam(':descripcion', $descripcion);

$sentencia->execute();

header("Location: ../index.php");
exit();