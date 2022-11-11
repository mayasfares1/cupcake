package dat.backend.model.entities;

public class Top
{
    private int top_id;
    private String name;
    private int price;

    public Top(int top_id, String name, int price) {
        this.top_id = top_id;
        this.name = name;
        this.price = price;
    }

    public int getTop_id() {
        return top_id;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }
}
