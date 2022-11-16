package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.*;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.CupcakeFacade;
import dat.backend.model.persistence.UserFacade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Order", value = "/order")

public class Order extends HttpServlet
{
        private ConnectionPool connectionPool;

        @Override
        public void init() throws ServletException
        {
            this.connectionPool = ApplicationStart.getConnectionPool();
        }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        User user = (User) session.getAttribute("user");
        // Create order and get orderId
        int order_id = CupcakeFacade.createOrder(user,connectionPool);
        // Create orderlines with the orderId
        CupcakeFacade.insertOrderLines(order_id, cart, connectionPool);
        // Empty shopping cart
        cart.resetCart();
        session.setAttribute("cart",cart);
        // Return to confirmation page
        request.getRequestDispatcher("WEB-INF/confirmation.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

}
