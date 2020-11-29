<%-- 
    Document   : login
    Created on : Nov 23, 2020, 10:31:16 AM
    Author     : Giroe Stefan Bogdan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<t:pageTamplate pageTitle="Login">
    
    <form class="form-signin" method="POST" action="j_security_check">
        <h1 class="h3 mb-3 front-weight-normal">Sign in</h1>
        <lable for="username" class="sr-only">Username</lable>
        <input type="text" id="username" name="j_username" class="form-control" placeholder="Username" required autofocus />
        <lable for="password" class="sr-only">Password</lable>
        <input type="password" id="password" name="j_password" class="form-control" placeholder="Password" required />
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
</t:pageTamplate>

