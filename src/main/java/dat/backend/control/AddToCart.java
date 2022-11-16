package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.*;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.CupcakeFacade;
import dat.backend.model.persistence.CupcakeMapper;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AddToCart", value = "/addtocart")
public class AddToCart extends HttpServlet
{
    private ConnectionPool connectionPool;

    @Override
    public void init() throws ServletException
    {
        this.connectionPool = ApplicationStart.getConnectionPool();
    }

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


        Top top = CupcakeFacade.getTopById(top_id,connectionPool);
        log("top er" + top);
        log("topid er " + top_id);
        Bottom bottom = CupcakeFacade.getBottomById(bottom_id, connectionPool);
        Cream cream = CupcakeFacade.getCreamById(cream_id, connectionPool);

        Cupcake cupcake = new Cupcake(top,bottom,cream,quantity_id);
        cart.add(cupcake);
        session.setAttribute("cart",cart);
        request.setAttribute("cartsize",cart.getNumberOfCupcakes());



       request.getRequestDispatcher("WEB-INF/welcome.jsp").forward(request, response);


    }
}
