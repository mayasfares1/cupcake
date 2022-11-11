package dat.backend.model.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static dat.backend.control.AddToCart.connectionPool;

public class CupcakeMapper {


    public static Object getTopById(int top_id, String name)
    {
        String sql = "SELECT * FROM cupcake2.top where top_id like = ? AND name like = ? ";
        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setInt(1,top_id);
                ps.executeQuery();
                if (top_id == Integer.parseInt(name) ) {
                    return name;
                }

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return getTopById(1,"name");
    }

    public static int getBottomById(int bottom_id, ConnectionPool connectionPool)
    {
        String sql = "";
        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setInt(1,bottom_id);
                ps.executeQuery();

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bottom_id;

    }


    public static int getCreamById(int cream_id, ConnectionPool connectionPool)
    {
        String sql = "SELECT * FROM cupcake2.cream where cream_id like = ?";
        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setInt(1,cream_id);
                ps.executeQuery();

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cream_id;
    }


}

