<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplate>
    <jsp:attribute name="header">
         Welcome : <p>${sessionScope.user.role}</p>
    </jsp:attribute>

    <jsp:attribute name="footer">
        Logged in area
    </jsp:attribute>

    <jsp:body>
        <%--        <img src="${pageContext.request.contextPath}/images/cupcakePrice.png" height="190" class="img-fluid"/>--%>
        <table class="table-header">
            <thead>
            <tr>
                <th>
            <form action="addtocart" method="post">
                <h3>Bottom</h3>
                <select name="bottom">
                    <option value="1">Chocolate : 5kr</option>
                    <option value="2">Vanilla : 5kr</option>
                    <option value="3">Nutmeg : 5kr</option>
                    <option value="4">Pistacio : 6kr</option>
                    <option value="5">Almond : 7kr</option>
                </select>
                <h3>Top</h3>
                <select name="top">
                    <option value="1">Chocolate : 5kr</option>
                    <option value="2">Blueberry : 5kr</option>
                    <option value="3">Raspberry : 5kr</option>
                    <option value="4">Crispy : 6kr</option>
                    <option value="5">Orange : 8kr</option>
                    <option value="6">Lemon : 8kr</option>
                    <option value="7">Blue cheese : 9kr</option>
                    <option value="18">Strawberry : 6kr</option>
                    <option value="19">Rum/Raisin : 7kr</option>
                </select>
                <h3>Cream</h3>
                <select name="cream"> <p>cream</p>
                    <option value="1">Chocolate : 5kr</option>
                    <option value="2">Blueberry : 5kr</option>
                    <option value="3">Raspberry : 5kr</option>
                    <option value="4">Crispy : 6kr</option>
                    <option value="5">Strawberry : 6kr</option>
                    <option value="6">Rum/Raisin : 7kr</option>
                    <option value="7">Orange : 8kr</option>
                    <option value="8">Lemon : 8kr</option>
                    <option value="9">Blue cheese : 9kr</option>
                </select>
                <h3>Quantity</h3>
                <select name="quantity">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                </select>
                <button name="addToCart">Add to cart</button>
            </form>
                </th>
            </tr>
            </thead>
        </table>
        <table class="table table-strip">
            <thead>
            <tr>
                <th>Antal i kurven : ${requestScope.cartsize}</th>
                <th>Indhold i Alt : <c:forEach var="item" items="${sessionScope.cart.cupcakeList}">
                    TopNr: ${item.top_id} BottomNr: ${item.bottom_id} CreamNr: ${item.cream_id} QuantityNr: ${item.quantity_id}
                    <br>
                </c:forEach></th>
            </tr>
            </thead>
        </table>
        <br>

        <form action="basket" method="post">
        <button name="SeeCart">See Cart</button>
        </form>

        <c:if test="${sessionScope.user != null}">
            <p>You are logged in ass UserName ${sessionScope.user.role}</p>
        </c:if>

        <c:if test="${sessionScope.user == null}">
            <p>You are not logged in yet. You can do it here: <a
                    href="../login.jsp">Login</a></p>
        </c:if>

    </jsp:body>

</t:pagetemplate>