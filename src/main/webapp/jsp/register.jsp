<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>

    <title>Register</title>
    <!-- Link to CSS file -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</head>
<body>
    <!-- Navigation Bar -->
    <nav>
        <ul>
        <li><a href="${pageContext.request.contextPath}/jsp/index.jsp">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/aboutus.jsp">About</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/contact.jsp">Contact</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/login.jsp">Login</a></li>
        </ul>
    </nav>

    <!-- Registration Container -->
    <div class="registration-container">
        <form class="registration-form" action="${pageContext.request.contextPath}/user" method="post">
            <h2>Registration</h2>
            
            <!-- Display Error Message if exists -->
            <c:if test="${not empty param.error}">
                <div class="error-message">
                    ${param.error}
                </div>
            </c:if>

            <input type="hidden" name="action" value="register">

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter Username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter Email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter Password" required>

            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
