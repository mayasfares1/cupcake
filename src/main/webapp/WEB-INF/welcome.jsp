<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplate>
    <jsp:attribute name="header">
         Welcome : ${sessionScope.user.role}

    </jsp:attribute>

    <jsp:attribute name="footer">
        Logged in area
    </jsp:attribute>

    <jsp:body>
<br>
        <form action="addtocart" method="post">
            <select name="top">
            <c:forEach var="topItem" items="${sessionScope.topList}">
                <option value="${topItem.top_id}">${topItem.name} (${topItem.price} kr)</option>
            </c:forEach>
            </select>

            <select name="bottom">
                <c:forEach var="bottomItem" items="${sessionScope.bottomList}">
                    <option value="${bottomItem.bottom_id}">${bottomItem.name} (${bottomItem.price} kr)</option>
                </c:forEach>
            </select>
            <select name="cream">
                <c:forEach var="creamItem" items="${sessionScope.creamList}">
                    <option value="${creamItem.cream_id}">${creamItem.name} (${creamItem.price} kr)</option>
                </c:forEach>
            </select>
            <select name="quantity">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
       <button name="AddToCart">AddToCart</button>
        </form>
<br><br>
        Antal linier i kurven: ${requestScope.cartsize}
        <br><br>

        Indhold i kurv:
        <c:forEach var="items" items="${sessionScope.cart.cupcakeList}">

            TopId: ${items.top.top_id} Name: ${items.top.name} Price: ${items.top.price}<br><br>
<%--            BottomId: ${item.bottom.bottom_id} Name: ${item.bottom.name} Price: ${item.bottom.price}--%>
<%--            CreamId: ${item.cream.cream_id} Name: ${item.cream.name} Price: ${item.cream.price}--%>
            Antal: ${items.quantity}

        </c:forEach>

<br><br><br>

        <div class="container mt-3">
            <hr/>
            <div class="row mt-4">
                <div class="col">
                    <form action="order" method="post">
                        <button name="Order">OrderNow</button>
                    </form>
                </div>
                <div class="col">
                    <form action="cart" method="post">
                        <button name="SeeCart">See Cart</button>
                    </form>
                </div>
                <div class="col">
                    <form action="order" method="post">
                        <button name="Pay">PayNow</button>
                    </form>
                </div>
            </div>
        </div>

        <br>
        <br>
        <br>


        <c:if test="${sessionScope.user == null}">
            <p>You are not logged in yet. You can do it here: <a
                    href="../login.jsp">Login</a></p>
        </c:if>
        <br><br><br><br>
    <div class="container mt-6">

        <c:if test="${sessionScope.user != null}">
            <p>Your user name is ${sessionScope.user.role}</p>
        </c:if>

    </div>

    </jsp:body>

</t:pagetemplate>