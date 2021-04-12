<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
//ALGORITMOS
if (request.getParameter("notaALP1") != null) {
	String notaALP1 = request.getParameter("notaALP1");
	session.setAttribute("notaALP1", notaALP1);
}
if (request.getParameter("notaALP2") != null) {
	String notaALP2 = request.getParameter("notaALP2");
	session.setAttribute("notaALP2", notaALP2);
}

//BANCO
if (request.getParameter("notaBAN1") != null) {
	String notaBAN1 = request.getParameter("notaBAN1");
	session.setAttribute("notaBAN1", notaBAN1);
}
if (request.getParameter("notaBAN2") != null) {
	String notaBAN2 = request.getParameter("notaBAN2");
	session.setAttribute("notaBAN2", notaBAN2);
}

//CALCULO
if (request.getParameter("notaCAL1") != null) {
	String notaCAL1 = request.getParameter("notaCAL1");
	session.setAttribute("notaCAL1", notaCAL1);
}
if (request.getParameter("notaCAL2") != null) {
	String notaCAL2 = request.getParameter("notaCAL2");
	session.setAttribute("notaCAL2", notaCAL2);
}

//ENGENHARIA
if (request.getParameter("notaENG1") != null) {
	String notaENG1 = request.getParameter("notaENG1");
	session.setAttribute("notaENG1", notaENG1);
}
if (request.getParameter("notaENG2") != null) {
	String notaENG2 = request.getParameter("notaENG2");
	session.setAttribute("notaENG2", notaENG2);
}

//POO
if (request.getParameter("notaPOO1") != null) {
	String notaPOO1 = request.getParameter("notaPOO1");
	session.setAttribute("notaPOO1", notaPOO1);
}
if (request.getParameter("notaPOO2") != null) {
	String notaPOO2 = request.getParameter("notaPOO2");
	session.setAttribute("notaPOO2", notaPOO2);
}

//SI
if (request.getParameter("notaSI1") != null) {
	String notaSI1 = request.getParameter("notaSI1");
	session.setAttribute("notaSI1", notaSI1);
}
if (request.getParameter("notaSI2") != null) {
	String notaSI2 = request.getParameter("notaSI2");
	session.setAttribute("notaSI2", notaSI2);
}
%>

<html>
<head>
<link href="style/style.css" rel="stylesheet" />
<%@include file="WEB-INF/jspf/links.jsp"%>
</head>

<body>

	<%
		if (session.getAttribute("session.username") == null) {
	%>
	<%@include file="WEB-INF/jspf/header.jsp"%>
	<script>
		alert("Desculpa, infelizmente você não tem acesso a essa página :(");
		location = './index.jsp';
	</script>
	<%
		} else {
	%>
	<%@include file="WEB-INF/jspf/headerLogout.jsp"%>
	<br>
	<div class="container" id="home1">
		<section class="section" id="home">
			<div class="d-flex justify-content-center">
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
										title="Atualizar">
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
									value=<%=session.getAttribute("notaALP1")%>></td>
								<td><input type="number" name="notaALP2"
									value=<%=session.getAttribute("notaALP2")%>></td>
								<%
									} else {
								%>
								<td><span></span></td>
								<td><span></span></td>
								<td><input type="number" name="notaALP1"></td>
								<td><input type="number" name="notaALP2"></td>
								<%}%>
							</tr>
							<tr>
								<td><span>Banco de Dados</span></td>
								<%
									if ((session.getAttribute("notaBAN1") != null) || (session.getAttribute("notaALP2") != null)) {
								%>
								<td><%=session.getAttribute("notaBAN1")%></td>
								<td><%=session.getAttribute("notaBAN2")%></td>
								<td><input type="number" name="notaBAN1"
									value=<%=session.getAttribute("notaBAN1")%>></td>
								<td><input type="number" name="notaBAN2"
									value=<%=session.getAttribute("notaBAN2")%>></td>
								<%
									} else {
								%>
								<td><span></span></td>
								<td><span></span></td>
								<td><input type="number" name="notaBAN1"></td>
								<td><input type="number" name="notaBAN2"></td>
								<%}%>
							</tr>
							<tr>
								<td><span>Cálculo</span></td>
								<%
									if ((session.getAttribute("notaCAL1") != null) || (session.getAttribute("notaCAL2") != null)) {
								%>
								<td><%=session.getAttribute("notaCAL1")%></td>
								<td><%=session.getAttribute("notaCAL2")%></td>
								<td><input type="number" name="notaCAL1"
									value=<%=session.getAttribute("notaCAL1")%>></td>
								<td><input type="number" name="notaCAL2"
									value=<%=session.getAttribute("notaCAL2")%>></td>
								<%
									} else {
								%>
								<td><span></span></td>
								<td><span></span></td>
								<td><input type="number" name="notaCAL1"></td>
								<td><input type="number" name="notaCAL2"></td>
								<%}%>
							</tr>
							<tr>
								<td><span>Engenharia de Software III</span></td>
								<%
									if ((session.getAttribute("notaENG1") != null) || (session.getAttribute("notaENG2") != null)) {
								%>
								<td><%=session.getAttribute("notaENG1")%></td>
								<td><%=session.getAttribute("notaENG2")%></td>
								<td><input type="number" name="notaENG1"
									value=<%=session.getAttribute("notaENG1")%>></td>
								<td><input type="number" name="notaENG2"
									value=<%=session.getAttribute("notaENG2")%>></td>
								<%
									} else {
								%>
								<td><span></span></td>
								<td><span></span></td>
								<td><input type="number" name="notaENG1"></td>
								<td><input type="number" name="notaENG2"></td>
								<%}%>
							</tr>
							<tr>
								<td><span>Programação Orientada a Objetos</span></td>
								<%
									if ((session.getAttribute("notaPOO1") != null) || (session.getAttribute("notaPOO2") != null)) {
								%>
								<td><%=session.getAttribute("notaPOO1")%></td>
								<td><%=session.getAttribute("notaPOO2")%></td>
								<td><input type="number" name="notaPOO1"
									value=<%=session.getAttribute("notaPOO1")%>></td>
								<td><input type="number" name="notaPOO2"
									value=<%=session.getAttribute("notaPOO2")%>></td>
								<%
									} else {
								%>
								<td><span></span></td>
								<td><span></span></td>
								<td><input type="number" name="notaPOO1"></td>
								<td><input type="number" name="notaPOO2"></td>
								<%}%>
							</tr>
							<tr>
								<td><span>Segurança da Informação</span></td>
								<%
									if ((session.getAttribute("notaSI1") != null) || (session.getAttribute("notaSI2") != null)) {
								%>
								<td><%=session.getAttribute("notaSI1")%></td>
								<td><%=session.getAttribute("notaSI2")%></td>
								<td><input type="number" name="notaSI1"
									value=<%=session.getAttribute("notaSI1")%>></td>
								<td><input type="number" name="notaSI2"
									value=<%=session.getAttribute("notaSI2")%>></td>
								<%
									} else {
								%>
								<td><span></span></td>
								<td><span></span></td>
								<td><input type="number" name="notaSI1"></td>
								<td><input type="number" name="notaSI2"></td>
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