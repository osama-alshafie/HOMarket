<%@ page language="java" contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256" %>
<%@ include file="/WEB-INF/views/Layout/TagLib.jsp" %>


<style>
    .form-signin {
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
        margin-left: 183px;
    }

    .form-signin .form-signin-heading, .form-signin .checkbox {
        margin-bottom: 10px;
    }

    .form-signin .checkbox {
        font-weight: normal;
    }

    .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
    }

    .form-signin .form-control:focus {
        z-index: 2;
    }

    .form-signin input[type="email"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    }

    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
</style>

<%-- <spring:url value="/login"   var="url" /> --%>
<form class="form-signin" name='f' action='/home'
      method="post">

    <h2 class="form-signin-heading">Please sign in</h2>

    <label for="username" class="sr-only">Name</label>

    <input type="text"
           id="inputEmail" class="form-control" name="username"
           placeholder="username" required autofocus> <label
        for="inputPassword" class="sr-only">
    <br>
    Password</label> <input
        type="password" id="inputPassword" class="form-control"
        name="password" placeholder="Password" required>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign
        in
    </button>
    <!-- 	<input name="_csrf" type="hidden" /> -->
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}"/>

</form>
<br>
<br>
<br>
<br>
<br>
<br>

