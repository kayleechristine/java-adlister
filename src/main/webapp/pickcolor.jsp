<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Color Picker" />
  </jsp:include>
</head>

<body>
  <form action="/viewcolor" method="POST">
    <label>
      <span class="h1">Pick a Color:</span>
      <input class="form-control" type="text" name="color" required>
    </label>
    <button type="submit" class="btn btn-primary">Go!</button>
  </form>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>

</html>