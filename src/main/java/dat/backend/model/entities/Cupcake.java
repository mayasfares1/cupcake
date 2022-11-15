package dat.backend.model.entities;

import dat.backend.control.Order;

public class Cupcake extends Order {

    private Top top;
    private Bottom bottom;
    private Cream cream;
    private int quantity;

    public Cupcake(Top top, Bottom bottom, Cream cream, int quantity) {
        this.top = top;
        this.bottom = bottom;
        this.cream = cream;
        this.quantity = quantity;
    }

    public Top getTop() {
        return top;
    }

    public void setTop(Top top) {
        this.top = top;
    }

    public Bottom getBottom() {
        return bottom;
    }

    public void setBottom(Bottom bottom) {
        this.bottom = bottom;
    }

    public Cream getCream() {
        return cream;
    }

    public void setCream(Cream cream) {
        this.cream = cream;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
