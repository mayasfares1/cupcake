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

        <p>Her kan du betal for dine vare</p>

        <form action="Order" method="post">

            <button type="submit">Pay</button>
        </form>

        <p>Hent i butiken</p>
        <form action="#" method="post">
            <button type="submit">Afhent selv</button>
        </form>

    </jsp:body>

</t:pagetemplate>
