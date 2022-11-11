package dat.backend.model.entities;

public class Cupcake {

    private int top_id;
    private int bottom_id;
    private int cream_id;
    private int quantity_id;

    public Cupcake(int top_id, int bottom_id, int cream_id, int quantity_id) {
        this.top_id = top_id;
        this.bottom_id = bottom_id;
        this.cream_id = cream_id;
        this.quantity_id = quantity_id;
    }

    public int getTop_id() {
        return top_id;
    }

    public int getBottom_id() {
        return bottom_id;
    }

    public int getCream_id() {
        return cream_id;
    }

    public int getQuantity_id() {
        return quantity_id;
    }

    public void setTop_id(int top_id) {
        this.top_id = top_id;
    }

    public void setBottom_id(int bottom_id) {
        this.bottom_id = bottom_id;
    }

    public void setCream_id(int cream_id) {
        this.cream_id = cream_id;
    }

    public void setQuantity_id(int quantity_id) {
        this.quantity_id = quantity_id;
    }

    @Override
    public String toString() {
        return "Cupcake{" +
                "top_id=" + top_id +
                ", bottom_id=" + bottom_id +
                ", cream_id=" + cream_id +
                ", quantity_id=" + quantity_id +
                '}';
    }
}
