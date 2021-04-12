<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	if (request.getParameter("session.login") != null) {
	String username = request.getParameter("session.username");
	session.setAttribute("session.username", username);
} else if (request.getParameter("session.logout") != null) {
	session.removeAttribute("session.username");
}
%>

<html>
<head>
<meta charset="UTF-8">
<title>Página Inicial</title>
<%@include file="WEB-INF/jspf/links.jsp"%>
<link href="style/style.css" rel="stylesheet" />
</head>
<body>
	<%
		if (session.getAttribute("session.username") == null) {
	%>
	<%@include file="WEB-INF/jspf/header.jsp"%>
	<%
		} else {
	%>
	<%@include file="WEB-INF/jspf/headerLogout.jsp"%>
	<%
		}
	%>
	<div class="container">
		<section class="section" id="home">
			<br>
			<div class="row mb-5" id="about1">
				<div class="col-lg-5 col-md-6 align-self-center about-content"
					data-anime="um">
					<h2>Quem Sou Eu</h2>
					<br>
					<p>Oie! Eu me chamo Maria Luiza, estou no 4º ciclo de Análise e
						Desenvolvimento de Sistemas na Fatec de Praia Grande e meu número
						de matrícula é 1290482013029. Ah, eu entrei lá em agosto de 2019.</p>
					<p>
						Vou deixar aqui meu <a
							href="https://www.linkedin.com/in/marialuizaaugusto/" id="link">LinkedIn</a>
						e meu Github <a href="https://github.com/IMaluz" id="git">Github</a>
						para conhecerem um pouco mais sobre mim e sobre o que já fiz.
						Qualquer coisa pode chamar, viu?
					</p>
				</div>
				<div class="col-lg-7 col-md-6 mb-4 mb-md-0">
					<div class="about-lado1" data-anime="um-dois">
						<img class="img-fluid" src="img/img1.svg">
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@include file="WEB-INF/jspf/linksJS.jsp"%>
	<script type="text/javascript" src="script/script.js"></script>
</body>
</html>