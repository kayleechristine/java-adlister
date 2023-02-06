<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Adlister" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to Adlister</h1>
        <jsp:useBean id="ads" scope="request" type="java.util.List"/>
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>
</body>
</html>