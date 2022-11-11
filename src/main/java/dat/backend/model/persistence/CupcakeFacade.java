package dat.backend.model.persistence;

public class CupcakeFacade
{
    public CupcakeFacade(int top_id, int bottom_id, int cream_id, int quantity_id) {

    }

    static int top (int top_id, ConnectionPool connectionPool)

    {
        return (int) CupcakeMapper.getTopById(top_id,"name");
    }

    static int bottom (int bottom_id, ConnectionPool connectionPool)
    {
        return CupcakeMapper.getBottomById(bottom_id,connectionPool);
    }

    static int cream (int cream_id, ConnectionPool connectionPool)
    {
        return CupcakeMapper.getCreamById(cream_id,connectionPool);
    }

}
