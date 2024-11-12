<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Airline Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/aboutus.css">
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
        <h1>About Us</h1>
        <section class="about-section">
            <h2>Our Mission</h2>
            <p>
                At [Airline Name], our mission is to provide a safe, comfortable, and affordable flying experience for passengers. We are dedicated to offering world-class service, timely operations, and innovative solutions to meet the diverse needs of travelers.
            </p>
        </section>

        <section class="about-section">
            <h2>Our Vision</h2>
            <p>
                Our vision is to become the leading airline known for exceptional service, operational excellence, and sustainability in the aviation industry. We aim to connect people globally while promoting the well-being of our passengers, employees, and the environment.
            </p>
        </section>

        <section class="about-section">
            <h2>What We Offer</h2>
            <ul>
                <li>Comfortable, spacious seating on all flights</li>
                <li>Affordable ticket prices with flexible booking options</li>
                <li>On-time arrivals and departures</li>
                <li>24/7 customer service and support</li>
                <li>Exclusive loyalty programs for frequent travelers</li>
            </ul>
        </section>
        
        <section class="about-section">
            <h2>Why Choose Us?</h2>
            <p>
                With years of experience in the aviation industry, we ensure that every flight with us is a seamless and pleasant journey. From booking your tickets online to enjoying in-flight services, our goal is to exceed expectations and make every passenger feel valued and cared for.
            </p>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 [Airline Name]. All rights reserved.</p>
    </footer>
</body>
</html>
