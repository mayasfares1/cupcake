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

        <p>Welcomen til kurven</p>
        <p>Her kan du se det du har købt..</p>

                <c:forEach var="items" items="${sessionScope.cart.cupcakeList}">
                    TopId: ${items.top.top_id} Name: ${items.top.name} Price: ${items.top.price}
                    Antal: ${items.quantity}

                </c:forEach>

        <form action="order" method="post">
            <button type="submit">Pay</button>
        </form>

    </jsp:body>

</t:pagetemplate>