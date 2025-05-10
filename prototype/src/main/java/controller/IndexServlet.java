package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet(name ="IndexServlet", value ="/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        String userRole = "guest";

        if (session != null && session.getAttribute("user") != null) {
            model.User user = (model.User) session.getAttribute("user");
            userRole = user.getRole();
        }

        request.setAttribute("userRole", userRole);
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }
}


