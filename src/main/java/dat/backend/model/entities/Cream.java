package dat.backend.model.entities;

public class Cream
{
    private int cream_id;
    private String name;
    private int price;

    public Cream(int cream_id, String name, int price) {
        this.cream_id = cream_id;
        this.name = name;
        this.price = price;
    }

    public int getCream_id() {
        return cream_id;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }
}
