<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt_br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">

<title>Excluir/Atualizar Fornecedores</title>

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
								<a href="insert.jsp" rel="bookmark">Excluir/Atualizar
									Fornecedores</a>
							</h1>
						</header>
						<div class="entry-content">
							<p class="text-center">
								<img alt="" height="300" src="assets/images/tech.jpg">
							</p>
							<p>
								Para adicionar basta preencher os campos e clicar em <strong>Enviar</strong>
								que os dados serão capturados do formulário pelo método post que
								será processado pelo <strong>FornecedorServlet</strong> que vai
								chamar o método <strong>salvar</strong> para insetir os dados na
								tabela <strong>usuarios</strong> do banco de dados.
							</p>
							<p>Para excluir é passado o ID do usuário por parâmetro para
								apagar os dados de determinado usuário.</p>

							<p>
								Para atualizar, basta clicar em <strong>atualizar</strong>, os
								dados serão transferidos para o formulário e será processado
								pelo <strong>doPost</strong> do servlet, porêm desta vez
								diferente de quando é para inserir, também é passado o ID que
								fica escondido em um campo não visível do formulário. Desta véz
								o método que acaba sendo executado é o método <strong>update</strong>.
							</p>



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
