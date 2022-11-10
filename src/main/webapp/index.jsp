<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate>
    <jsp:attribute name="header">
         Olsker Cupcake
    </jsp:attribute>

    <jsp:attribute name="footer">
        Olsker Cupcake
    </jsp:attribute>

    <jsp:body>

      <p>Log venligst på systemet først</p>
        <p>Der efter kan du shoppe løs</p>

        <form action="login.jsp" method="post">
        <button type="submit">Login</button>
        </form>

    </jsp:body>

</t:pagetemplate>