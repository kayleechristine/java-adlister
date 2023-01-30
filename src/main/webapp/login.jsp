<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        } else {
            response.sendRedirect("/login.jsp"); // Walkthrough Note: Not necessary, as the page refreshes anyway.
        }
    }
%>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Log In" />
    </jsp:include>
    <%-- Walkthrough Note: Param can make the navbar dynamic! --%>
</head>
<body>

    <%@ include file="partials/navbar.jsp" %>

    <%-- Login Form Sauce: https://mdbootstrap.com/docs/standard/extended/login/ --%>
    <form action="login.jsp" method="post">
        <section class="vh-100 gradient-custom">
            <div class="container py-1 h-100">
                <div class="row d-flex justify-content-center align-items-start mt-3 h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">
                                <div class="mb-md-3 mt-md-4 pb-5">

                                    <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                    <p class="text-white-50 mb-5">Please enter your login and password.</p>

                                    <%-- Walkthrough Note: Username & passwords were not being passed into the JSP redirect function because it refers to the name attribute, not the id attribute.  --%>

                                    <div class="form-outline form-white mb-4">
                                        <label class="form-label" for="username">Username</label>
                                        <input type="text" id="username" name="username" class="form-control form-control-lg" />
                                    </div>

                                    <div class="form-outline form-white mb-4">
                                        <label class="form-label" for="password">Password</label>
                                        <input type="password" id="password" name="password" class="form-control form-control-lg" />
                                    </div>

                                    <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

                                    <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>

                                </div>

                                <div>
                                    <p class="mb-0">Don't have an account? <a href="#!" class="text-white-50 fw-bold">Sign Up</a>
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
