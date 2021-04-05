<?php

include("conexionbd.php");

$id_producto = $_GET["id_producto"];

$sentencia = $mbd->prepare("DELETE FROM productos WHERE id_producto = :id_producto");
$sentencia->bindParam(':id_producto', $id_producto);

$sentencia->execute();

header("Location: ../index.php");
exit();