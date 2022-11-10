<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplate>
    <jsp:attribute name="header">
         Welcome                                             <p> user ${sessionScope.user.role}</p>
    </jsp:attribute>

    <jsp:attribute name="footer">
        Logged in area
    </jsp:attribute>

    <jsp:body>
        <img src="${pageContext.request.contextPath}/images/cupcakePrice.png" height="190"  class="img-fluid"/>

        <label for="Bottom">Choose Bottom:</label>
        <select id="Bottom">
            <option value="chocolate">chocolate (5kr)</option>
            <option value="vanilla">vanilla (5kr)</option>
            <option value="nutmeg">nutmeg (5kr)</option>
            <option value="pistacia">pistacia (5kr)</option>
            <option value="almond">almond (5kr)</option>
        </select>

<label for="Topping">Choose Topping</label>
        <select id="Topping">
            <option value="chocolate">chocolate(5kr)</option>
            <option value="blueberry">blueberry(5kr)</option>
            <option value="rasberry">rasberry(5kr)</option>
            <option value="crispy">crispy(6kr)</option>
            <option value="strawberry">strawberry (6kr)</option>
            <option value="rum/raisin">rum/raisin (7kr)</option>
            <option value="orange">orange (8kr)</option>
            <option value="lemon">lemon (8kr)</option>
            <option value="blueCheese">blueCheese(9kr)</option>
        </select>

        <label for="Cream">Choose Cream</label>
        <select id="Cream">
            <option value="chocolate">chocolate (5kr)</option>
            <option value="vanilla">vanilla (5kr)</option>
            <option value="nutmeg">nutmeg (5kr)</option>
            <option value="pistacia">pistacia (5kr)</option>
            <option value="almond">almond (5kr)</option>
        </select>


        <c:if test="${sessionScope.user != null}">
            <p>You are logged in ass user  ${sessionScope.user.role}</p>
        </c:if>

        <c:if test="${sessionScope.user == null}">
            <p>You are not logged in yet. You can do it here: <a
                    href="../login.jsp">Login</a></p>
        </c:if>

    </jsp:body>

</t:pagetemplate>