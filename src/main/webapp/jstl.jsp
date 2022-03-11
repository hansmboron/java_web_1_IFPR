<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt_br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">

<title>JSTL</title>

<link rel="shortcut icon" href="assets/images/gt_favicon.png">

<!-- Bootstrap -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css"
	rel="stylesheet">
<!-- Icon font -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<!-- Fonts -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
<!-- Custom styles -->
<link rel="stylesheet" href="assets/css/styles.css">

<!--[if lt IE 9]> <script src="assets/js/html5shiv.js"></script> <![endif]-->
</head>
<body>

	<header id="header">
		<nav class="navbar navbar-default navbar-sticky">
			<div class="container-fluid">
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp">Home</a></li>
					</ul>

				</div>
			</div>
		</nav>
	</header>

	<main id="main">

		<div class="container">

			<div class="row topspace">
				<div class="col-sm-8 col-sm-offset-2">

					<article class="post">
						<header class="entry-header">
							<div class="entry-meta">
								<span class="posted-on"><time
										class="entry-date published">11 de Março de 2022</time></span>
							</div>
							<h1 class="entry-title">
								<a href="jstl.html" rel="bookmark">JSTL</a>
							</h1>
						</header>
						<div class="entry-content">
							<p class="text-center">
								<img alt="" height="300" src="assets/images/jstl.jpg">
							</p>
							<p>
								<strong>JSTL</strong>(Java Server Pages Standard Tag Library)
								significa <strong>Biblioteca Padrão de Tags JSP</strong>.
							</p>
							<p>Para poder utilizar os recursos de JSTL neste projeto, foi
								necessário importar o arquivo <strong>jstl-1.2.jar</strong> dentro da pasta
								<strong>lib</strong> que está dentro da pasta <strong>WEB-INF</strong>!</p>
							<p>A idéia central dessa tecnologia consiste que ela funcione
								como uma extensão da tecnologia JSP, oferecendo ao
								desenvolvedor, tags que trazem formas mais simples e produtivas,
								de implementar funcionalidades cruciais de seu código, como por
								exemplo: laços, estruturas de decisão, conexão a banco dados,
								execução de query's SQL, etc.</p>

							<p>Outro recurso muito importante, introduzido pela JSTL, é a
								EL, ou seja, Expression Language(Linguagem de Expressão), que é
								uma forma mais simples de acessar e manipular objetos, sua
								sintaxe, é composta por um “cifrão”, seguido por um par de
								chaves, contendo o nome do objeto.</p>
							

						</div>
					</article>
					<!-- #post-## -->

				</div>
			</div>
			<!-- /row post  -->

			<div class="clearfix"></div>

		</div>
		<!-- /container -->

	</main>

	<footer id="footer">
		<div class="container">by Hans M. Boron</div>
	</footer>

	<footer id="underfooter"> </footer>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>
