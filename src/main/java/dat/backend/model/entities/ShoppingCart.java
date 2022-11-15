package dat.backend.model.entities;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart
{
    private List<Cupcake> cupcakeList = new ArrayList<>();

    public ShoppingCart()
    {
    }

    public void add(Cupcake cupcake)
    {
       cupcakeList.add(cupcake);
    }

    public int getNumberOfCupcakes()
    {
        return cupcakeList.size();
    }

    public List<Cupcake> getCupcakeList()
    {
        return cupcakeList;
    }

    public void resetCart()
    {
        cupcakeList.clear();
    }
}
