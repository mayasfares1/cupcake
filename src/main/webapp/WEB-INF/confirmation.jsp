<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplate>
    <jsp:attribute name="header">
         Confirmation : ${sessionScope.user.role}

    </jsp:attribute>

    <jsp:attribute name="footer">
       Confirmation
    </jsp:attribute>

    <jsp:body>

        <h1>Kvittering</h1>

        <p>Tak for din bestilling. Du kan hente den om 1 time i Olsker</p>
    </jsp:body>

</t:pagetemplate>