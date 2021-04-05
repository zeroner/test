<?php

include("conexionbd.php");

$id_producto = $_POST["id_producto"];
$nombre = $_POST["nombre"];
$precio = $_POST["precio"];
$descripcion = $_POST["descripcion"];
$categoria = $_POST["categoria"];

$sentencia = $mbd->prepare("UPDATE productos SET nombre = :nombre, precio = :precio, descripcion = :descripcion WHERE id_producto = :id_producto");
$sentencia->bindParam(':id_producto', $id_producto);
$sentencia->bindParam(':nombre', $nombre);
$sentencia->bindParam(':precio', $precio);
$sentencia->bindParam(':descripcion', $descripcion);

$sentencia->execute();

header("Location: ../index.php");
exit();