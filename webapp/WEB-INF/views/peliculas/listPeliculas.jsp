<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Listado de Peliculas</title>
    <spring:url value="/resources" var="urlPublic" />
	<spring:url value="/peliculas/create" var="urlCreate" />
<%--     <link href="${urlPublic}/bootstrap/css/bootstrap.min.css" rel="stylesheet"> --%>
<%--     <link href="${urlPublic}/bootstrap/css/theme.css" rel="stylesheet"> --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  </head>

  <body>

    <jsp:include page="../includes/menu.jsp"></jsp:include>
    <br>
	<br>
	<br>
    
    <div class="container theme-showcase" role="main">

      <h3>Listado de Peliculas</h3>
            
	  <c:if test="${mensaje != null}">
	  	<div class="alert alert-success" role="alert">${mensaje}</div>
	  </c:if>
      
      <a href="${urlCreate}" class="btn btn-success" role="button" title="Nueva Pelicula" >Nueva</a><br><br>
	
      <div class="table-responsive">
        <table class="table table-hover table-striped table-bordered">
            <tr>
                <th>Titulo</th>
                <th>Genero</th>
                <th>Clasificacion</th>
                <th>Duracion</th>
                <th>Fecha Estreno</th>
                <th>Estatus</th>
                <th>Opciones</th>
            </tr>
            
            <c:forEach var="pelicula" items="${peliculas}">
			  <tr>
				<td>${pelicula.titulo}</td>
				<td>${pelicula.genero}</td>
				<td>${pelicula.clasificacion}</td>
				<td>${pelicula.duracion} min.</td>
				<td><fmt:formatDate pattern="dd-MM-yyyy" value="${pelicula.fechaEstreno}" />
				</td>
					<c:choose>
					    <c:when test="${pelicula.estatus eq 'Activa'}">
					        <td><span class="badge badge-success">${pelicula.estatus}</span></td>
					    </c:when>
					    <c:otherwise>
					        <td><span class="badge badge-danger">${pelicula.estatus}</span></td>
					    </c:otherwise>
					</c:choose>
				<td>
					<a href="#" class="btn btn-success btn-sm" role="button" title="Edit">
						<span class="fas fa-pencil-alt"></span>
					</a>
					<a href="#" class="btn btn-danger btn-sm" role="button" title="Eliminar">
						<span class="fa fa-trash"></span>
					</a>
				</td>
			  </tr>
			</c:forEach>
            
        </table>
      </div>
          
      <hr class="featurette-divider">

      <jsp:include page="../includes/footer.jsp"></jsp:include>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
