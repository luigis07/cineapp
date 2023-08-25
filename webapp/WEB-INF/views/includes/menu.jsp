<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/" var="urlRoot"></spring:url>
<!-- Fixed navbar -->
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${urlRoot}">My CineSite</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a href="${urlRoot}peliculas/index" class="nav-link" href="#">Peliculas</a></li>
				<li class="nav-item"><a href="${urlRoot}banners/index" class="nav-link" href="#">Banners</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Acerca</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Login</a></li>
			</ul>
<!-- 			<ul class="navbar-nav"> -->
<!-- 				<li class="nav-item"><a class="nav-link" href="#">Login</a></li> -->
<!-- 			</ul> -->
		</div>
	</div>
</nav>