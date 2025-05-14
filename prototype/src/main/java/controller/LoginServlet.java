package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.logging.Level;
import java.util.logging.Logger;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import model.AccessLog;
import model.User;
import model.dao.AccessLogDAO;
import model.dao.DBConnector;
import model.dao.UserDAO;

@Webservlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 1- retrieve the current session
        HttpSession session = request.getSession();

        // 2- create an instance of the Validator class    
        Validator validator = new Validator();

        // 3- capture the posted email      
        String email = request.getParameter("email");

        // 4- capture the posted password    
        String password = request.getParameter("password");

        User user = null;

        // Validate email and password format first
        if (!validator.validateEmail(email)) {           
            // 8- set incorrect email error to the session
            session.setAttribute("errorMsg", "The email you entered is incorrect.");

            // 9- redirect user back to the login.jsp
            request.getRequestDispatcher("login2.jsp").include(request, response);
            return;
        } 

        if (!validator.validatePassword(password)) {                  
            // 11- set incorrect password error to the session 
            session.setAttribute("errorMsg", "The password you entered is incorrect.");          

            // 12- redirect user back to the login.jsp       
            request.getRequestDispatcher("login2.jsp").include(request, response);
            return;
        }

        DBConnector dbConnector = new DBConnector();

        try {       
            Connection conn = dbConnector.openConnection();

            // Use UserDAO to find the user
            UserDAO userDAO = new UserDAO(conn);
            user = userDAO.getUser(email, password);

            if (user != null) {
                // 13- save the logged in user object to the session     
                session.setAttribute("user", user);

                // Log the login event
                AccessLogDAO accessLogDAO = new AccessLogDAO(conn);
                AccessLog log = new AccessLog(user.getEmail(), LocalDateTime.now(), null);
                accessLogDAO.addAccessLog(log);

                // 14- redirect user to the index.jsp     
                request.getRequestDispatcher("index.jsp").include(request, response);

            } else {                       
                // 15- set user does not exist error to the session      
                session.setAttribute("errorMsg", "The user does not exist.");          

                // 16- redirect user back to the login.jsp       
                request.getRequestDispatcher("login2.jsp").include(request, response);        
            }

            dbConnector.closeConnection();

        } catch (ClassNotFoundException | SQLException ex) {           
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);

            // Set generic error message for users
            session.setAttribute("errorMsg", "Internal server error. Please try again later.");

            request.getRequestDispatcher("login2.jsp").include(request, response);
        }
    }
}
