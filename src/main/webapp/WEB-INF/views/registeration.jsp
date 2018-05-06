<%@ page language="java" contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <meta charset="UTF-8"/>
    <title>Login</title>

    <link rel="stylesheet"
          href="<spring:url value="/resources/css/home.css"/>" type="text/css"/>
    <link rel="stylesheet"
          href="<spring:url value="/resources/Css/font-awesome.min.css"/>"
          type="text/css"/>
    <link rel="stylesheet"
          href="<spring:url value="/resources/Css/normalize.css"/>"
          type="text/css"/>
    <link rel="stylesheet"
          href="<spring:url value="/resources/Css/bootstrap.css"/>"
          type="text/css"/>
    <link rel="stylesheet"
          href="<spring:url value="/resources/Css/login.css"/>" type="text/css"/>

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
                            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                            aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> <span
                            class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Online Exam</a>
                </div>
            </div>
            <!-- /.navbar-collapse -->
    </div>
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
                <spring:url value="/registeration" var="url"/>


                Welcome To Registeration page
                <form:form commandName="customer" cssClass="subscribe" action="${url}"
                           method="POST">

                <div class="form-group col-lg-2 col-lg-offset-2">
                        <%--<spring:message code="todo.FN" />--%>
                </div>
                <div class="form-group col-lg-6 col-lg-offset-0">
                    <form:input path="firstName" cssClass="form-control pass"/>

                </div>
                <div class="form-group col-lg-12 col-lg-offset-0">
                        <%--<form:errors path="studentName" ></form:errors>--%>
                </div>

                <!--  PHONE  -->

                    <%--<div class="form-group col-lg-2 col-lg-offset-2">--%>
                    <%--<spring:message code="todo.PHON" />--%>
                    <%--</div>--%>
                    <%--<div class="form-group col-lg-6 col-lg-offset-0 act">--%>
                    <%--<form:input path="studentMobile" cssClass="form-control pass" />--%>
                    <%--</div>--%>
                    <%--<div class="form-group col-lg-12 col-lg-offset-0">--%>
                    <%--<form:errors path="studentMobile" ></form:errors>--%>

                    <%--</div>--%>
                <!--  Gender -->

                    <%--<div class="form-group col-lg-2 col-lg-offset-2">--%>
                    <%--<spring:message code="todo.gender" />--%>
                    <%--</div>--%>
                    <%--<div class="form-group col-lg-6 col-lg-offset-0 act">--%>
                    <%--<form:select path="studentGender" items="${options}" cssClass="form-control pass" />--%>

                    <%--</div>--%>
                    <%--<div class="form-group col-lg-12 col-lg-offset-0">--%>
                    <%--<form:errors path="studentMobile" ></form:errors>--%>

            </div>

            <!-- Email  -->
            <div class="form-group col-lg-2 col-lg-offset-2">
                    <%--<spring:message code="todo.EM" />--%>
            </div>
            <div class="form-group col-lg-6 col-lg-offset-0 act">
                <form:input path="email" cssClass="form-control pass"/>


            </div>
            <div class="form-group col-lg-12 col-lg-offset-0">
                    <%--<form:errors path="studentEmail" />--%>
            </div>

            <!-- PASS  -->
            <div class="form-group col-lg-2 col-lg-offset-2">
                    <%--<spring:message code="todo.PASS" />--%>
            </div>
            <div class="form-group col-lg-6 col-lg-offset-0 act">
                <form:input path="password" cssClass="form-control pass"/>
            </div>
            <div class="form-group col-lg-12 col-lg-offset-12">
                    <%--<form:errors path="studentPassword" ></form:errors>--%>
            </div>
            <!-- -------------------- -->
            <div class="form-group col-lg-5 col-lg-offset-5">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>

            </form:form>

            <!-- ------------------------------------------------------------------- -->
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
<script src="JsFiles/jquery-1.12.0.js"></script>
<script src="JsFiles/bootstrap.min.js"></script>
<script src="JsFiles/jquery.js"></script>
<script src="JsFiles/jquery.nicescroll.min.js"></script>
</body>

</html>