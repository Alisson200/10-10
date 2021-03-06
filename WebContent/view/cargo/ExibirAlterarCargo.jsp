<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/estiloAlterar.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Altera��o de cargo</title>
</head>
<body>
	<c:import url="../topo.jsp" />
	<br>
	<br>
	<br>
	<div id="formulario">
		<form class="form-inline" action="alterarCargo" method="post">

			<h3>Alterar Cargo</h3>
			<div class="form-group">
				<form:errors path="cargo.nome" cssStyle="color:red" />
				<!-- bean validation  -->
				<br /> <label for="Nome">Nome</label><br> <input type="text"
					class="form-control" name="nome" value="${ExibirAlterarCargo.nome}">
			</div>
			<br> <br>
			<div class="form-group">
				<input type="hidden" class="form-control" name="id"
					value="${ExibirAlterarCargo.id}" readonly>
			</div>
			<button type="submit" class="btn btn-primary">Alterar</button>
		</form>
	</div>


	<br>
	<center>
		<c:import url="../menu.jsp" />
	</center>
</body>
</html>