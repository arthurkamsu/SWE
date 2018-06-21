<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>

<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="icon" type="image/png" href="images/favicon.ico">

<style type="text/css">
.outer-wrapper {
	display: table;
	width: 100%;
	height: 100%;
}

.inner-wrapper {
	display: table-cell;
	vertical-align: middle;
	padding: 15px;
}
</style>
</head>
<body>
	<section class="outer-wrapper">
		<div class="inner-wrapper">
			<div class="container">
				<form name='loginForm' role="form" action="<c:url value='/login' />"
					method='POST'>
					<div class="row">
						<c:if test="${not empty error}">
							<div class="col-sm-4 col-sm-offset-4">
								<div class="form-group">
									<div class="alert alert-danger" role="alert">
										<span class="glyphicon glyphicon-exclamation-sign"
											aria-hidden="true"></span> <span class="sr-only">Error:</span>
										${error}
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${not empty msg}">
							<div class="col-sm-4 col-sm-offset-4">
								<div class="form-group">
									<div class="alert alert-success" role="alert">
										<span class="glyphicon glyphicon-exclamation-sign"
											aria-hidden="true"></span> <span class="sr-only">Success:</span>
										${msg}
									</div>
								</div>
							</div>
						</c:if>
					</div>
					<div class="row">
						<div class="col-sm-4 col-sm-offset-4">
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-user"></span></span> <input type="text"
										name="username" id="username" class="form-control" placeholder="Username">
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4 col-sm-offset-4">
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-question-sign"></span></span> <input
										type="password" name="password" class="form-control"
										placeholder="Password">
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4 col-sm-offset-4 text-center">
							<div class="form-group">
								<input name="submit" class="btn btn-primary" type="submit"
									value="Log In" /> <input type="hidden"
									name="${_csrf.parameterName}" value="${_csrf.token}" />
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$("#username").focus();
		});
	</script>
</body>
</html>