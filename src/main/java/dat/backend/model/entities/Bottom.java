package dat.backend.model.entities;

public class Bottom
{
    private int bottom_id;
    private String name;
    private int price;

    public Bottom(int bottom_id, String name, int price) {
        this.bottom_id = bottom_id;
        this.name = name;
        this.price = price;
    }

    public int getBottom_id() {
        return bottom_id;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }
}
