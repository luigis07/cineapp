<!DOCTYPE html>
<html lang="en">
	<head>
		<style type="text/css">
			#contenedor {
			  padding-top: 56px;
			}
		</style>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>Detalles de la pelicula</title>

<!-- 		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<!-- 		<link href="bootstrap/css/theme.css" rel="stylesheet"> -->

		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
		<spring:url value="/resources" var="urlPublic"></spring:url>
	</head>

	<body>

		<jsp:include page="includes/menu.jsp" />

		<div id="contenedor" class="container theme-showcase" role="main">

			<!-- Marketing messaging -->
			<div class="container marketing">

				<div class="page-header">
					<h2>${pelicula.titulo}</h2>
				</div>
				<div class="row">
					<div class="col-md-3">
						<p class="text-center">
							<img class="rounded" th:src="${urlPublic}/images/${pelicula.imagen}" alt="Generic placeholder image" width="155" height="220">            
						</p>
					</div>
					<div class="col-md-9">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">DETALLES</h3>
							</div>
							<div class="card-body">                           
								<p>
									Título Original : ${pelicula.titulo} <br>
									Actores :  <br>
									Director:  <br>                  
									Clasificación: ${pelicula.clasificacion} <br>
									Duración: ${pelicula.duracion} minutos <br>
									Género: ${pelicula.genero} <br>
									Fecha Estreno: ${pelicula.fechaEstreno}                  
								</p> 
							</div>
						</div>                          
					</div>
				</div>
				<br>
				<div class="card">
				  <div class="card-header">
				    <h3 class="card-title"><span class="badge bg-success">20-05-2017</span></h3>
				  </div>
				  <div class="card-body">
						<table class="table table-striped">
							<thead>
								<tr>                  
									<th>Hora</th>
									<th>Sala</th>                                  
									<th>Precio</th>                                  
								</tr>
							</thead>
							<tbody>             
								<tr>                 
									<td>16:00</td>
									<td>Sala 1</td>  
									<td>$10</td>  
								</tr>              
								<tr>                 
									<td>18:00</td>
									<td>Sala 1</td> 
									<td>$10</td>  
								</tr>              
								<tr>                 
									<td>20:00</td>
									<td>Sala 1</td>                        
									<td>$10</td>  
								</tr>              
								<tr>                
									<td>14:00</td>
									<td>Sala 1</td>                       
									<td>$10</td>  
								</tr>              
								<tr>               
									<td>16:00</td>
									<td>Sala 1</td> 
									<td>$10</td>  
								</tr>                             
								<tr>                  
									<td>20:00</td>
									<td>Sala 1</td> 
									<td>$10</td>  
								</tr>              
								<tr>                 
									<td>22:00</td>
									<td>Sala 1</td>  
									<td>$10</td>  
								</tr>              
							</tbody>           
						</table>
					</div>
				</div>
				<br>
				<div class="row">
				  <div class="col-sm-7">
				    <div class="card">
				      <div class="card-header">
				        <h3 class="card-title">Trailer</h3>
				      </div>
				      <div class="card-body">
				        <iframe width="100%" height="315" src=""></iframe>
				      </div>
				    </div>
				  </div>
				  <div class="col-sm-5">
				    <div class="card">
				      <div class="card-header">
				        <h3 class="card-title">SINOPSIS</h3>
				      </div>
				      <div class="card-body">
				        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur.</p>
				      </div>
				    </div>
				  </div>
				</div>

			</div><!-- /.container -->

			<hr class="featurette-divider">

			<jsp:include page="includes/footer.jsp" />

		</div> <!-- /container -->

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
<!-- 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>  -->
<!-- 		<script src="bootstrap/js/bootstrap.min.js"></script> -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	</body>
</html>
