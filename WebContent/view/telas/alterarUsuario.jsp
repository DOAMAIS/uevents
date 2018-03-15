<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:if test="${msg != null}">
	<meta http-equiv="Refresh" content="3;url=http://localhost:8080/uevents/">
</c:if>
<title>Alterar Dados</title>
<c:import url="/view/linkcss.jsp" />
</head>
<body>
<c:import url="../comum/navbarAlterar.jsp" />
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-20 p-b-20">
				<form class="login100-form validate-form" action="alterarUsuario" method="post">
					<span class="login100-form-title p-b-20">
						UEVENTS
					</span>
					<c:if test="${msg != null }">
						<div class="alert alert-success">
						      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
						      <span><strong> Parabéns:</strong> ${msg} </span>
						</div>
					</c:if>
					<input type="hidden" name="idTipoUsuario" value="${usuarioLogado.idTipoUsuario}">
					
					<div class="wrap-input100 validate-input m-b-35" data-validate = "Enter matriculation">
						<input class="input100" type="text" name="nome" value="${usuario.nome }">
						<span class="focus-input100" data-placeholder="Nome"></span>
					</div>
					<div><input class="input100" type="hidden" name="id" value="${usuario.id }"></div>
					<div class="wrap-input100 validate-input m-b-35" data-validate = "Enter matriculation">
						<input class="input100" type="text" name="cpf" value="${usuario.cpf }">
						<span class="focus-input100" data-placeholder="CPF"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-35" data-validate = "Enter email">
						<input class="input100" type="text" name="email" value="${usuario.email}">
						<span class="focus-input100" data-placeholder="E-mail"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-35" data-validate="Enter password">
						<input class="input100" type="password" name="senha">
						<span class="focus-input100" data-placeholder="Senha Nova"></span>
					</div>
					<br>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Alterar
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<c:import url="/view/linkjs.jsp" />
	

</body>
</html>
