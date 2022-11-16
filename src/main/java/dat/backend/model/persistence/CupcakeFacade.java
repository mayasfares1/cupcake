package dat.backend.model.persistence;

import dat.backend.model.entities.*;

import java.sql.SQLException;
import java.util.List;

public class CupcakeFacade
{
    public static Top getTopById(int top_id,ConnectionPool connectionPool)
    {
            return CupcakeMapper.getTopById(top_id,connectionPool);
    }
    public static Bottom getBottomById(int bottom_id, ConnectionPool connectionPool)
    {
            return CupcakeMapper.getBottomById(bottom_id,connectionPool);
    }
    public static Cream getCreamById(int cream_id, ConnectionPool connectionPool)
    {
            return CupcakeMapper.getCreamById(cream_id,connectionPool);
    }


    public static List<Top> getAllToppings(ConnectionPool connectionPool) throws SQLException
    {
        return CupcakeMapper.getAllToppings(connectionPool);
    }
    public static List<Bottom> getAllBottoms(ConnectionPool connectionPool) throws SQLException
    {
        return CupcakeMapper.getAllBottoms(connectionPool);
    }
    public static List<Cream> getAllCreams(ConnectionPool connectionPool) throws SQLException
    {
        return CupcakeMapper.getAllCreams(connectionPool);
    }

    public static int createOrder(User user, ConnectionPool connectionPool)
    {
        return CupcakeMapper.createOrder(user,connectionPool);
    }

    public static void insertOrderLines(int order_id, ShoppingCart cart, ConnectionPool connectionPool)
    {
        CupcakeMapper.insertOrderLines(order_id,cart,connectionPool);
    }
}
