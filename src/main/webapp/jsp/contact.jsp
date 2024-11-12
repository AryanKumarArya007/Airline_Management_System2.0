<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Airline Management System</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/contact.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="${pageContext.request.contextPath}/jsp/index.jsp">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/aboutus.jsp">About</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/contact.jsp">Contact</a></li>
                <!-- Add other navigation links here -->
            </ul>
        </nav>
    </header>

    <div class="container">
        <h1>Contact Us</h1>
        <form action="submitContact" method="POST">
            <div class="form-group">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>

            <div class="form-group">
                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="message">Your Message:</label>
                <textarea id="message" name="message" rows="4" placeholder="Enter your message" required></textarea>
            </div>

            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>

    <footer>
        <p>&copy; 2024 Airline Management System</p>
    </footer>
</body>
</html>
