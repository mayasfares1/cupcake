package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.UserFacade;
import dat.backend.model.persistence.UserMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "createUsername", urlPatterns = {"/createUsername"} )
public class CreateUser extends HttpServlet {
    private ConnectionPool connectionPool;
    @Override
    public void init() throws ServletException
    {
        this.connectionPool = ApplicationStart.getConnectionPool();
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        session.setAttribute("user", null); // invalidating user object in session scope
        UserMapper userMapper = new UserMapper(connectionPool);
        User user;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String userrole = request.getParameter("userrole");
        int balance = Integer.parseInt(request.getParameter("balance"));

        try {
            user = UserMapper.createUser(username, password, userrole, balance);

        } catch (DatabaseException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }


}
