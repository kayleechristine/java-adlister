<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="background-color: ${color}">

<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Color Viewer" />
    </jsp:include>
</head>

<body style="background-color: ${color}">
    <h1>Viewing: ${color}</h1>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>

</html>
