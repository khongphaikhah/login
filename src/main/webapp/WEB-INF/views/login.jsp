<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%-- <link href="<c:url value="/resources/css/bootstrap522.min.css" />"
	rel="stylesheet"> --%>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.css"
	rel="stylesheet" />
</head>
<body>
	<div class="header">
		<h1 class="text-center">Đăng nhập</h1>
	</div>	
	<div class="login-form">
		<div class="container">
		<p>
	      <c:if test="${message != null}">
	          <span class="text-success">${message}</span>
	      </c:if>
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<form:form action="submit" method="post" modelAttribute="account">
						<!-- Email input -->
						<div class="form-outline mb-4">
							<form:input path="userName" id="form2Example1" class="form-control" /> 
							<form:label path="userName" class="form-label" for="form2Example1">Tài khoản</form:label>
						</div>

						<!-- Password input -->
						<div class="form-outline mb-4">
							<form:input path="password" type="password" id="form2Example2" class="form-control" />
							<form:label path="password" class="form-label" for="form2Example2">Mật khẩu</form:label>
						</div>
						
						<!-- Submit button -->
						<form:button class="btn btn-primary btn-block mb-4">Đăng
							nhập</form:button>

					</form:form>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
	<!-- MDB -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.js"></script>
	<%-- <script
		src="<c:url value="/resources/js/bootstrap522.bundle.min.js" />"></script> --%>
</body>
</html>