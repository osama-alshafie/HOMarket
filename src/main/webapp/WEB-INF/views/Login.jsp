<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<html lang="en">
<head>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<meta charset="UTF-8" />
<title>Login</title>

<link rel="stylesheet"
	href="<spring:url value="/resources/css/home.css"/>" type="text/css" />
<link rel="stylesheet"
	href="<spring:url value="/resources/Css/font-awesome.min.css"/>"
	type="text/css" />
<link rel="stylesheet"
	href="<spring:url value="/resources/Css/normalize.css"/>"
	type="text/css" />
<link rel="stylesheet"
	href="<spring:url value="/resources/Css/bootstrap.css"/>"
	type="text/css" />
<link rel="stylesheet"
	href="<spring:url value="/resources/Css/login.css"/>" type="text/css" />

<script src="/resources/JsFiles/html5shiv.min.js"></script>
<script src="/resources/JsFiles/respond.min.js"></script>

</head>
<body>
	<div class="container-fluid">
		<div class="overlay">

			<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="Login.html">Online Exam</a>
					</div>
				</div>
				<!-- /.navbar-collapse -->
				<!-- /.container-fluid -->
			</nav>

			<div class="row sign" style="padding-bottom: 30px;">
				<div class="row " style="padding-top: 60px; margin-top: 20px;">
					<form role="form" class="subscribe">

						<div class="form-group col-lg-4 col-lg-offset-4 intro">
							<center>
								<h1>Online exam</h1>
								<br>
							</center>
						</div>
					</form>
				</div>
				<div class="container col-lg-4 col-lg-offset-4 ">
					
					<div class="input-text">
						<spring:url value="/Login" var="url" />
						 
						<form:form commandName="student" action="${url}" method="POST"
							cssClass="form-group">
							<h2 class="form-signin-heading">Please sign in</h2>
							<form:input path="studentEmail" cssClass="form-control" />
							<form:password path="studentPassword" cssClass="form-control" />
					
							<div class="form-group">
								<div class="checkbox" style="margin-bottom: 0px;">
									<label class="convert-pass"> <i> <input class="in"
											type="checkbox" value=""> Show Password
									</i> <i> <u><a href='<spring:url value="/registeration"></spring:url>'
												style="margin-left: 10px;">Register</a></u>
									</i>
									</label>
								</div>
							</div>
							<div class="btn btn-primary col-lg-8 col-lg-offset-2 SignUp">
							 <center>	
							 <form:button  >sign in</form:button>
							 </center>
							</div>
						</form:form>
						<!-- ------------------------------------------ -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid footer">


		<div class="text-center"
			style="padding-top: 20px; padding-right: 5px;">
			<a href="#">Contact Us</a> <a href="#">Help</a> <a href="#">About</a>
			<a href="#">Developers</a>
		</div>
		<div class="copyright text-center">
			Copyright &copy; 2016 <span>.MAGIC</span>
		</div>
	</div>
	<script src="/resources/JsFiles/jquery-1.12.0.js"></script>
	<script src="/resources/JsFiles/bootstrap.min.js"></script>
	<script src="/resources/JsFiles/jquery.js"></script>
	<script src="/resources/JsFiles/jquery.nicescroll.min.js"></script>
</body>
</html>