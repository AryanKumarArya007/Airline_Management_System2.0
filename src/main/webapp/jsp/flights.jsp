<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
    <title>Available Flights</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flights.css">
</head>
<body>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/jsp/index.jsp">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/jsp/aboutus.jsp">About</a></li>
            <li><a href="${pageContext.request.contextPath}/jsp/contact.jsp">Contact</a></li>
            <li class="logout"><a href="${pageContext.request.contextPath}/jsp/logout.jsp">Logout</a></li>
        </ul>
    </nav>

    <div class="container">
        <h2>Available Flights</h2>
        <table class="flight-table">
            <thead>
                <tr>
                    <th>Flight Number</th>
                    <th>Origin</th>
                    <th>Destination</th>
                    <th>Departure</th>
                    <th>Arrival</th>
                    <th>Seats Available</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>AI101</td>
                    <td>Mumbai</td>
                    <td>Delhi</td>
                    <td>2024-11-15 06:00:00</td>
                    <td>2024-11-15 08:10:00</td>
                    <td>120</td>
                    <td>3500.00</td>
                </tr>
                <tr>
                    <td>SG203</td>
                    <td>Bangalore</td>
                    <td>Chennai</td>
                    <td>2024-11-15 09:30:00</td>
                    <td>2024-11-15 10:40:00</td>
                    <td>80</td>
                    <td>1800.00</td>
                </tr>
                <tr>
                    <td>6E315</td>
                    <td>Delhi</td>
                    <td>Jaipur</td>
                    <td>2024-11-15 12:45:00</td>
                    <td>2024-11-15 13:35:00</td>
                    <td>100</td>
                    <td>2200.00</td>
                </tr>
                <tr>
                    <td>AI112</td>
                    <td>Kolkata</td>
                    <td>Mumbai</td>
                    <td>2024-11-15 15:00:00</td>
                    <td>2024-11-15 17:55:00</td>
                    <td>60</td>
                    <td>4200.00</td>
                </tr>
                <tr>
                    <td>UK501</td>
                    <td>Hyderabad</td>
                    <td>Bangalore</td>
                    <td>2024-11-15 14:10:00</td>
                    <td>2024-11-15 15:20:00</td>
                    <td>70</td>
                    <td>2500.00</td>
                </tr>
                <tr>
                    <td>G8204</td>
                    <td>Ahmedabad</td>
                    <td>Pune</td>
                    <td>2024-11-15 11:30:00</td>
                    <td>2024-11-15 13:00:00</td>
                    <td>90</td>
                    <td>2800.00</td>
                </tr>
                <tr>
                    <td>AI125</td>
                    <td>Chennai</td>
                    <td>Delhi</td>
                    <td>2024-11-15 07:15:00</td>
                    <td>2024-11-15 10:10:00</td>
                    <td>50</td>
                    <td>5000.00</td>
                </tr>
                <tr>
                    <td>6E445</td>
                    <td>Jaipur</td>
                    <td>Mumbai</td>
                    <td>2024-11-15 17:25:00</td>
                    <td>2024-11-15 19:25:00</td>
                    <td>75</td>
                    <td>3300.00</td>
                </tr>
                <tr>
                    <td>SG210</td>
                    <td>Pune</td>
                    <td>Goa</td>
                    <td>2024-11-15 06:50:00</td>
                    <td>2024-11-15 08:10:00</td>
                    <td>85</td>
                    <td>2100.00</td>
                </tr>
                <tr>
                    <td>UK432</td>
                    <td>Delhi</td>
                    <td>Hyderabad</td>
                    <td>2024-11-15 13:40:00</td>
                    <td>2024-11-15 15:50:00</td>
                    <td>95</td>
                    <td>3900.00</td>
                </tr>
            </tbody>
        </table>
    </div>

    <script src="${pageContext.request.contextPath}/js/scripts.js"></script>
</body>
</html>
