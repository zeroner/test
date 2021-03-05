<?php

include("conexionbd.php");

$nombreMision = $_POST["nombreMision"];
$yearLanzamiento = $_POST["yearLanzamiento"];
$nombreModeloCohete = $_POST["nombreModeloCohete"];
$lugarLanzamiento = $_POST["lugarLanzamiento"];
$lanzamiento = $_POST["lanzamiento"];
$recuperacion = $_POST["recuperacion"];
$reutilizacion = $_POST["reutilizacion"];

$verifiarLanzamiento = $mbd->prepare('SELECT * FROM lanzamientosSpacex WHERE nombreMision = :nombre');
$verifiarLanzamiento->bindParam(':nombre', $nombreMision);
$verifiarLanzamiento->execute();

$resultadosVerifiarLanzamiento = $verifiarLanzamiento->fetchAll(PDO::FETCH_ASSOC);

if(count($resultadosVerifiarLanzamiento) > 0){
	echo "No se pudo registrar porque el lanzamiento ya esta registrado";
}
else {

	$sentencia = $mbd->prepare("INSERT INTO lanzamientosSpacex (nombreMision, yearLanzamiento, nombreModeloCohete, lugarLanzamiento, lanzamiento, recuperacion, reutilizacion) VALUES (:nombre, :year, :modelo, :lugar, :lanzamiento, :recu, :reut)");
	$sentencia->bindParam(':nombre', $nombreMision);
	$sentencia->bindParam(':year', $yearLanzamiento);
	$sentencia->bindParam(':modelo', $nombreModeloCohete);
	$sentencia->bindParam(':lugar', $lugarLanzamiento);
	$sentencia->bindParam(':lanzamiento', $lanzamiento);
	$sentencia->bindParam(':recu', $recuperacion);
	$sentencia->bindParam(':reut', $reutilizacion);

	$sentencia->execute();

	echo "lanzamiento registrado";
}
