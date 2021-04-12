<%@ page pageEncoding="UTF-8"%>

<%
	if (request.getParameter("session.login") != null) {
	String username = request.getParameter("session.username");
	session.setAttribute("session.username", username);
}else if(request.getParameter("session.logout") != null){
	session.removeAttribute("session.username");
}
%>

<%
	if (session.getAttribute("session.username") == null) {
%>
<div class="container d-flex justify-content-center">
	<div class="row">
		<div class="card"></div>
		<div class="card">
			<h1 class="title">Login</h1>
			<form class="container center-align" action="index.jsp">
				<div class="input-container">
					<input type="text" id="Username" required="required"
						name="session.username" /> <label for="Username">Usuário</label>
					<div class="bar"></div>
				</div>
				<div class="button-container">
					<button name="session.login">
						<span>Entrar</span>
					</button>
				</div>
			</form>
		</div>
	</div>
</div>
<%
	} else {
%>
<div class="container d-flex justify-content-center">
	<div class="row">
		<div class="card"></div>
		<div class="card">
			<h1 class="title">Logout</h1>
			<form class="container center-align">
				<div class="input-container">
					<h3>Você Realmente Deseja Sair?</h3>
				</div>
				<div class="button-container">
					<button type="button" class="botao"
						onclick="location.href='http://localhost:8080/ProvaPoo/index.jsp';">
						<span>Retornar</span>
					</button>
					<button type="submit" class="botao" name="session.logout">
						<span>Sair</span>
					</button>
				</div>
			</form>
		</div>
	</div>
</div>
<%}%>