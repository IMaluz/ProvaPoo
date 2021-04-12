<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if (request.getParameter("notaALP1") != null) {
	String notaALP1 = request.getParameter("notaALP1");
	session.setAttribute("notaALP1", notaALP1);
}
if (request.getParameter("notaALP2") != null) {
	String notaALP2 = request.getParameter("notaALP2");
	session.setAttribute("notaALP2", notaALP2);
}
%>

<html>
<head>
<meta charset="UTF-8">
<title>Disciplinas</title>
<%@include file="WEB-INF/jspf/links.jsp"%>
<link href="style/style.css" rel="stylesheet" />
</head>
<body>
<body>
	<%
		if (session.getAttribute("session.username") == null) {
	%>
	<%@include file="WEB-INF/jspf/header.jsp"%>
	<script>
		alert("Desculpa, infelizmente você não tem acesso a essa página :(");
		location = './index.jsp'
	</script>
	<%
		} else {
	%>
	<%@include file="WEB-INF/jspf/headerLogout.jsp"%>
	<br>
	<div class="container" id="home1">
		<section class="section" id="home">
			<div class="d-flex justify -content-center">
				<h1 id="h1Home">Cadastrar Notas</h1>
			</div>
			<div class="table-responsive">
				<form>
					<table class="table">
						<thead class="table table">
							<tr>
								<th scope="col">Matéria</th>
								<th scope="col">P1</th>
								<th scope="col">P2</th>
								<th scope="col" id="p1">Editar P1</th>
								<th scope="col" id="p2">Editar P2</th>
								<th scope="col"><button type=submit name="set" id="ref"
										title="Atualiar">
										<i class="fas fa-sync"></i>
									</button></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><span>Algoritmos e Lógica de Programação</span></td>
								<%
									if ((session.getAttribute("notaALP1") != null) || (session.getAttribute("notaALP2") != null)) {
								%>
								<td><%=session.getAttribute("notaALP1")%></td>
								<td><%=session.getAttribute("notaALP2")%></td>
								<td><input type="number" name="notaALP1"
									value="<%=session.getAttribute("notaALP1")%>"></td>
								<td><input type="number" name="notaALP2"
									value="<%=session.getAttribute("notaALP2")%>"></td>
								<%
									} else {
								%>
								<td><span></span></td>
								<td><span></span></td>
								<td><input type="number" name="notaALP1"></td>
								<td><input type="number" name="notaALP2"></td>
								<%}%>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</section>
	</div>
	<%}%>

	<%@include file="WEB-INF/jspf/linksJS.jsp"%>
	<script type="text/javascript" src="script/script.js"></script>
</body>
</html>