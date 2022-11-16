<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>

<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><jsp:invoke fragment="header"/></title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">

                <img src="${pageContext.request.contextPath}/images/cupcake.png" height="190"  class="img-fluid"/>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">

                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/createUsername.jsp">createUser</a>
                    </li>
                    <li class="nav-item">
                        <c:if test="${sessionScope.user == null}">
                    <a class="nav-link" href="${pageContext.request.contextPath}/login.jsp">About</a>
                        </c:if>
                        <c:if test="${sessionScope.user != null}">
                            <a class="nav-link" href="${pageContext.request.contextPath}/ordres.jsp">Ordre</a>
                        </c:if>
                    </li>
                    <li class="nav-item">

                    <c:if test="${sessionScope.user == null }">
                        <a class="nav-link" href="${pageContext.request.contextPath}/login.jsp">Login</a>
                    </c:if>
                    <c:if test="${sessionScope.user != null }">
                        <a class="nav-link" href="${pageContext.request.contextPath}/logout">Log out</a>
                    </c:if>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<div id="body" class="container mt-4" style="min-height: 400px;">
    <h1><jsp:invoke fragment="header"/></h1>
    <jsp:doBody/>
</div>

<!-- Footer -->


    <div class="row border-top border-primary pt-4">
        <div class="col">
            <ul>
                <li>Opening Hours:</li>
                <li>Monday-friday: 8am-6pm</li>
                <li>Saturday-Sundag: 10am-2pm</li>
            </ul>
        </div>
        <div class="col">
            <ul>
                <li>Adresse:</li>
                <li>Nørgaardsvej 30</li>
                <li>2800 Kongens Lyngby</li>
            </ul>
        </div>
        <div class="col">
            <ul>
                <li>TLF AND EMAIL</li>
                <li>36154504</li>
                <li>Kontakt@cphbusiness.dk</li>
            </ul>
        </div>

</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>
 </html>