package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.*;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.CupcakeFacade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddToCart", value = "/addtocart")
public class AddToCart extends HttpServlet
{
    public static ConnectionPool connectionPool = ApplicationStart.getConnectionPool();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");

        int top_id = Integer.parseInt(request.getParameter("top"));
        int bottom_id = Integer.parseInt(request.getParameter("bottom"));
        int cream_id = Integer.parseInt(request.getParameter("cream"));
        int quantity_id = Integer.parseInt(request.getParameter("quantity"));

//        User user = UserFacade.login(username, password, connectionPool);

        Cupcake cupcake = new Cupcake(top_id,bottom_id,cream_id,quantity_id);

        cart.add(cupcake);
        session.setAttribute("cart",cart);
        request.setAttribute("cartsize",cart.getNumberOfCupcakes());
        request.setAttribute("cupcake", cupcake);



       request.getRequestDispatcher("WEB-INF/welcome.jsp").forward(request, response);




    }
}
