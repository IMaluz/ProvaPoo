<%@ page pageEncoding="UTF-8"%>
<header class="header_one">
	<nav class="navbar navbar-expand-lg navbar-light" id="top">
		<div class="container">
			<a class="navbar-brand" href="#home"> <img src="img\icon.png"
				alt="Usuario"> <span class="topo">Olá, <%=session.getAttribute("session.username")%></span>
			</a>
			<button class="navbar-toggler" type="button" data-togglr="collapse"
				data-target="#top-menu" aria-exapand="false">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id=top-menu>
				<ul class="navbar-nav mr-auto mx-auto">
					<li class="nav-item"><a class="nav-link" href="index.jsp">
							Página Inicial</a></li>
					<li class="nav-item"><a class="nav-link"
						href="disciplinas.jsp"> Disciplinas Em Curso</a></li>
					<li class="nav-item"><span id="login"><a
							class="nav-link" href="login.jsp">Sair</a></span></li>
				</ul>
			</div>
		</div>
		<span id="icon-sair"><a href="login.jsp"><img
				src="img/logout.png" title="Sair"
				alt="ícone redondo com uma seta para fora" /></a></span>
	</nav>
</header>