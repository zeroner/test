<?php

include("conexionbd.php");

$listado = $mbd->prepare('SELECT * FROM lanzamientosSpacex');
$listado->execute();
$resultados = $listado->fetchAll(PDO::FETCH_ASSOC);
 
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<button id="btnCargar">Cargar Datos de la API de SpaceX</button>

	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">nombre mision</th>
	      <th scope="col">año lanzamiento</th>
	      <th scope="col">modelo cohete</th>
	      <th scope="col">lanzamiento</th>
	      <th scope="col">reutilizacion</th>
	      <th scope="col">recuperacion</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<?php
	  	if (count($resultados) > 0) {
			foreach ($resultados as $r) {
				?>
				<tr>
			      <th scope="row"><?php echo $r["idLanzamiento"]; ?></th>
			      <td><?php echo $r["nombreMision"]; ?></td>
			      <td><?php echo $r["yearLanzamiento"]; ?></td>
			      <td><?php echo $r["nombreModeloCohete"]; ?></td>
			      <td>
			      	<?php 
			      	if($r["lanzamiento"] == "true") 
			      		echo "Exitoso"; 
			      	else if($r["lanzamiento"] == "false") 
			      		echo "Fallido";
			      	else
			      		echo "Pendiente";
			      	?>
			      </td>
			      <td>
			      	<?php 
			      	if($r["reutilizacion"] == 0) 
			      		echo "No"; 
			      	else if($r["reutilizacion"] == 1) 
			      		echo "Si";
			      	?>
			      </td>
			      <td>
			      	<?php 
			      	if($r["recuperacion"] == 0) 
			      		echo "No"; 
			      	else if($r["recuperacion"] == 1) 
			      		echo "Si";
			      	?>
			      </td>
			    </tr>
				<?php
			}
		}
		else {
			echo "<p>No hay lanzamientos de spaceX aun registrados.</p>";
		}
	  	?>
	  </tbody>
	</table>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

	<script type="text/javascript">
		$(function(){
			$("#btnCargar").on("click", function(e){
				e.preventDefault();

				$.ajax({
		           type:'GET',
		           url:'https://api.spacexdata.com/v3/launches?start=2008-01-01&end=2020-12-31',
		           success:function(data){
		           	console.log(data);
		              $.each( data, function( i, l ){
						console.log( "Index #" + i + ": " + l );

						var datos = {
							nombreMision: l["mission_name"],
            				yearLanzamiento: l["launch_year"],
            				nombreModeloCohete: l["rocket"]["rocket_name"],
            				lugarLanzamiento: l["launch_site"]["site_name"],
            				lanzamiento: l["launch_success"],
            				recuperacion: l["rocket"]["fairings"] == null ? false : l["rocket"]["fairings"]["recovered"],
            				reutilizacion: l["rocket"]["fairings"] == null ? false : l["rocket"]["fairings"]["reused"]
						}

						$.ajax({
				           type:'POST',
				           url:'insertarLanzamiento.php',
				           data: datos,
				           success:function(data2){
				           	console.log(data2);
				           	location.reload();
				           }
				        });
					  });
		           }
		        });
			});
		});
	</script>
</body>
</html>