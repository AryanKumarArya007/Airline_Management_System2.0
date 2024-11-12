<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Airline Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
</head>
<body>
    <!-- Navbar -->
    <nav>
        <ul>
             <li><a href="${pageContext.request.contextPath}/jsp/index.jsp">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/aboutus.jsp">About</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/contact.jsp">Contact</a></li>
        </ul>
    </nav>
<div class="container">
    <h1>Welcome to Airline Management System</h1>

    <!-- Check if the user is logged in -->
    <c:choose>
        <c:when test="${not empty sessionScope.username}">
            <!-- User is logged in, show options -->
            <p>Hello, ${sessionScope.username}!</p>
            <a href="${pageContext.request.contextPath}/jsp/flights.jsp" class="button-link">Flights</a> | 
            <a href="${pageContext.request.contextPath}/jsp/booking.jsp" class="button-link">Bookings</a> |
            <a href="${pageContext.request.contextPath}/jsp/logout.jsp" class="button-link">Logout</a>
        </c:when>
        <c:otherwise>
            <!-- User is not logged in, show login and register options -->
            <div class="button-container">
                <a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button-link">Login</a> 
                <a href="${pageContext.request.contextPath}/jsp/register.jsp" class="button-link">Register</a>
            </div>
        </c:otherwise>
    </c:choose>
</div>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
    <script src="${pageContext.request.contextPath}/js/navbar.js"></script>
    
</body>
</html>
