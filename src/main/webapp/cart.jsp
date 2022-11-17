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
        <p>Here is your orders</p>

        <c:forEach var="item" items="${sessionScope.cart.cupcakeList}">

            TopId: ${item.top.top_id} Name: ${item.top.name} Price: ${item.top.price} kr
            <br>
            BottomId: ${item.bottom.bottom_id} Name: ${item.bottom.name} Price: ${item.bottom.price} kr
            <br>
            CreamId: ${item.cream.cream_id} Name: ${item.cream.name} Price: ${item.cream.price} kr
            <br>
            Antal: ${item.quantity}

        </c:forEach>

        <div class="container mt-3">
            <hr/>
            <div class="row mt-4">
                <div class="col">
                    <form action="order">
                        <button name="order">Bestil</button>
                    </form>
                </div>
                <div class="col">
                    <form action="welcome">
                        <button name="Back">Back</button>
                    </form>
                </div>
                </div>
            </div>



    </jsp:body>

</t:pagetemplate>