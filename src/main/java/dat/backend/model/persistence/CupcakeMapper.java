package dat.backend.model.persistence;

import dat.backend.model.entities.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class CupcakeMapper {


    public static Top getTopById(int top_id, ConnectionPool connectionPool)
    {
        String sql = "SELECT * FROM cupcake2.top where top_id like = ? ";

        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setInt(1, top_id);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    String name = rs.getString("name");
                    double price = rs.getDouble("price");
                    Top newTop = new Top(top_id, name, price);
                    return newTop;
                } else {
                    return null;
                }
            }

        }
            catch (SQLException e)
            {
            e.printStackTrace();
        }
        return null;
    }

    public static Bottom getBottomById(int bottom_id, ConnectionPool connectionPool)
    {

        String sql = "SELECT * FROM cupcake2.bottom where bottom_id like = ? ";

        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setInt(1, bottom_id);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    String name = rs.getString("name");
                    double price = rs.getDouble("price");
                    Bottom newBottom = new Bottom(bottom_id, name, price);
                    return newBottom;
                }
                else
                {
                    return null;
                }
            }

            }
             catch (SQLException e)
             {
                e.printStackTrace();
            }
               return null;
        }


    public static Cream getCreamById(int cream_id, ConnectionPool connectionPool)
    {
        String sql = "SELECT * FROM cupcake2.cream where cream_id like = ?";

        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setInt(1, cream_id);
                ResultSet rs = ps.executeQuery();
                if (rs.next())
                {
                    String name = rs.getString("name");
                    double price = rs.getDouble("price");
                    Cream newCream = new Cream(cream_id, name, price);
                    return newCream;
                }
                else
                {
                    return null;
                }
            }
        }
            catch (SQLException e)

            {
                e.printStackTrace();
            }

            return null;
        }

    public static List<Top> getAllToppings(ConnectionPool connectionPool) throws SQLException
    {
        List<Top> topList = new ArrayList<>();
        String sql = "SELECT * FROM cupcake2.top";

        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next())
                {
                    int top_id = rs.getInt("top_id");
                    String name = rs.getString("name");
                    double price = rs.getDouble("price");
                    Top newTop = new Top(top_id, name, price);
                    topList.add(newTop);
                }
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return topList;
    }

    public static List<Bottom> getAllBottoms(ConnectionPool connectionPool) throws SQLException
    {
        List<Bottom> bottomList = new ArrayList<>();
        String sql = "SELECT * FROM cupcake2.bottom";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next())
                {
                    int bottom_id = rs.getInt("bottom_id");
                    String name = rs.getString("name");
                    double price = rs.getDouble("price");
                    Bottom newBottom = new Bottom(bottom_id, name, price);
                    bottomList.add(newBottom);
                }
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return bottomList;
    }

    public static List<Cream> getAllCreams(ConnectionPool connectionPool) throws SQLException
    {
        List<Cream> creamList = new ArrayList<>();
        String sql = "SELECT * FROM cupcake2.cream";

        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ResultSet rs = ps.executeQuery();
                while (rs.next())
                {
                    int cream_id = rs.getInt("cream_id");
                    String name = rs.getString("name");
                    double price = rs.getDouble("price");
                    Cream newCream = new Cream(cream_id, name, price);
                    creamList.add(newCream);
                }
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return creamList;
    }

    public static int createOrder(User user, ConnectionPool connectionPool)
    {
        String sql = "insert into orders (customer_name) value (?)";

        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS))
            {
                ps.setString(1, user.getUsername());
                ps.executeUpdate();
                ResultSet rs = ps.getGeneratedKeys();
                rs.next();
                return rs.getInt(1);

            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return 0;
    }

    public static void insertOrderLines(int order_Id, ShoppingCart cart, ConnectionPool connectionPool)
    {
        String sql = "insert into order_lines (" +
                "(order_id, top_id, bottom_id, cream_id, " +
                "top_price, bottom_price, cream_price,amount ) value (?,?,?,?,?,?,?,?)";

        try (Connection connection = connectionPool.getConnection())
        {
            for (Cupcake cupcake : cart.getCupcakeList())
            {
                try (PreparedStatement ps = connection.prepareStatement(sql))
                {

                    ps.setInt(1,order_Id);
                    ps.setInt(2, cupcake.getTop().getTop_id());
                    ps.setInt(3, cupcake.getBottom().getBottom_id());
                    ps.setInt(4, cupcake.getCream().getCream_id());
                    ps.setDouble(5, cupcake.getTop().getPrice());
                    ps.setDouble(6, cupcake.getBottom().getPrice());
                    ps.setDouble(7, cupcake.getCream().getPrice());
                    ps.setInt(8, cupcake.getQuantity());
                    ps.executeUpdate();

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    }



