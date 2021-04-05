<!DOCTYPE html>
<html>
<head>
	<title>Prueba CRUD - Yajaira</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
				  <div class="container-fluid">
				    <a class="navbar-brand" href="#">Productos</a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				        <li class="nav-item">
				          <a class="nav-link active" aria-current="page" href="index.php">Listado</a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link" href="agregar.php">Agregar (+)</a>
				        </li>
				      </ul>
				    </div>
				  </div>
				</nav>
			</div>
		</div>
	  	<div class="row">
	    	<div class="col-md-12">
	      		<h1 class="display-1">Agregar nuevo producto</h1>
		      	<p class="lead">Este es un formulario para ingresar nuevos productos de compra.</p>
		    </div>
		  </div>
	  	<div class="row">
	  	<div class="col-md-12">
	  		<form class="row g-3" method="POST" action="./proceso-datos/agregarproducto.php">
			  <div class="col-md-6">
			    <label for="inputEmail4" class="form-label">Nombre producto: </label>
			    <input type="text" class="form-control" id="inputEmail4" name="nombre">
			  </div>
			  <div class="col-md-6">
			    <label for="inputPassword4" class="form-label">Precio: </label>
			    <input type="text" class="form-control" id="inputPassword4" name="precio">
			  </div>
			  <div class="col-12">
			    <label for="inputAddress" class="form-label">Descripción: </label>
			    <input type="text" class="form-control" id="inputAddress" name="descripcion">
			  </div>
			  <div class="col-md-4">
			    <label for="inputState" class="form-label">Categoria: </label>
			    <select id="inputState" class="form-select" name="categoria">
			      <option selected>Elige una opcion...</option>
			      <option value="Limpieza">Limpieza</option>
			      <option value="Alimentos">Alimentos</option>
			      <option value="Muebles">Muebles</option>
			    </select>
			  </div>
			  <div class="col-12">
			    <button type="submit" class="btn btn-primary">Guardar</button>
			  </div>
			</form>
	  	</div>
	  </div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</body>
</html>