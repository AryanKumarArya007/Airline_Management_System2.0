package airline.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/FlightServlet")
public class FlightServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Flight class to hold flight details
    public class Flight {
        private String flight_number;
        private String origin;
        private String destination;
        private String departure_time;
        private String arrival_time;
        private int seats_available;
        private double price;

        // Getters and setters for flight details
        public String getflight_number() {
            return flight_number;
        }

        public void setflight_number(String flight_number) {
            this.flight_number = flight_number;
        }

        public String getOrigin() {
            return origin;
        }

        public void setOrigin(String origin) {
            this.origin = origin;
        }

        public String getDestination() {
            return destination;
        }

        public void setDestination(String destination) {
            this.destination = destination;
        }

        public String getdeparture_time() {
            return departure_time;
        }

        public void setdeparture_time(String departure_time) {
            this.departure_time = departure_time;
        }

        public String getarrival_time() {
            return arrival_time;
        }

        public void setarrival_time(String arrival_time) {
            this.arrival_time = arrival_time;
        }

        public int getseats_available() {
            return seats_available;
        }

        public void setseats_available(int seats_available) {
            this.seats_available = seats_available;
        }

        public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }
    }

    // Handles GET requests to fetch all flights
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Flight> flights = new ArrayList<>();
        String sql = "SELECT * FROM flights";

        try (Connection con = DatabaseConnection.getConnection(); 
             PreparedStatement stmt = con.prepareStatement(sql); 
             ResultSet rs = stmt.executeQuery()) {

            // Fetch flight details and create Flight objects
            while (rs.next()) {
                Flight flight = new Flight();
                flight.setflight_number(rs.getString("flight_number"));
                flight.setOrigin(rs.getString("origin"));
                flight.setDestination(rs.getString("destination"));
                flight.setdeparture_time(rs.getString("departure_time"));
                flight.setarrival_time(rs.getString("arrival_time"));
                flight.setseats_available(rs.getInt("seats_available"));
                flight.setPrice(rs.getDouble("price"));
                flights.add(flight);
            }

            // Set the flights list as a request attribute and forward to JSP
            request.setAttribute("flights", flights);
            request.getRequestDispatcher("/jsp/flights.jsp").forward(request, response);

        } catch (Exception e) {
            // Log the exception and set the error message
            e.printStackTrace();
            request.setAttribute("error", "An error occurred while fetching the flights.");
            request.getRequestDispatcher("/jsp/error.jsp").forward(request, response);
        }
    }

    // Handles POST requests to add a new flight (optional in your case)
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String flightName = request.getParameter("flightName");
        String departure = request.getParameter("departure");
        String arrival = request.getParameter("arrival");

        String sql = "INSERT INTO flights (flight_name, departure, arrival) VALUES (?, ?, ?)";

        try (Connection con = DatabaseConnection.getConnection(); 
             PreparedStatement stmt = con.prepareStatement(sql)) {

            // Set the parameters for the insert statement
            stmt.setString(1, flightName);
            stmt.setString(2, departure);
            stmt.setString(3, arrival);

            // Execute the update
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                // Redirect to the admin dashboard if the insertion is successful
                response.sendRedirect("admin/dashboard.jsp");
            } else {
                // If no rows were affected, redirect with an error
                response.sendRedirect("admin/dashboard.jsp?error=Failed to add flight.");
            }
        } catch (Exception e) {
            // Log the error and send an error message to the user
            e.printStackTrace();
            response.sendRedirect("admin/dashboard.jsp?error=Error occurred while adding the flight.");
        }
    }
}
