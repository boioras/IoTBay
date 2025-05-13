package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.DBConnector;

public class LoginServlet extends HttpServlet {

    private static final Logger logger = Logger.getLogger(LoginServlet.class.getName()); // Logger for the class

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("userName");
        String password = request.getParameter("password");

        // Check for empty fields
        if (email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            response.sendRedirect("login2.jsp?error=emptyfields");
            return;
        }

        try {
            // Use your custom DBConnector class
            DBConnector dbConnector = new DBConnector();
            Connection conn = dbConnector.openConnection();

            String sql = "SELECT * FROM Users WHERE email = ? AND password = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, email);
                stmt.setString(2, password);

                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        String role = rs.getString("role");

                        HttpSession session = request.getSession();
                        session.setAttribute("userId", rs.getInt("id"));
                        session.setAttribute("email", rs.getString("email"));
                        session.setAttribute("firstName", rs.getString("first_name"));
                        session.setAttribute("role", role);

                        // Redirect user based on their role
                        if ("staff".equalsIgnoreCase(role)) {
                            response.sendRedirect("staffDashboard.jsp");
                        } else {
                            response.sendRedirect("customerDashboard.jsp");
                        }

                    } else {
                        // Invalid login
                        response.sendRedirect("login2.jsp?error=invalid");
                    }
                }
            } finally {
                dbConnector.closeConnection(); // Close DB connection
            }

        } catch (ClassNotFoundException | SQLException e) {
            logger.log(Level.SEVERE, "An error occurred during login: ", e); // Log the exception
            response.sendRedirect("login2.jsp?error=exception");
        }
    }
}


    
