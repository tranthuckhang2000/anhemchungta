package Model;

public class Item {
    private String maitem;
    private Smartphone smartphone;
    private int quality;
    private int price;

    public Item(String maitem, Smartphone smartphone, int quality, int price) {
        this.maitem = maitem;
        this.smartphone = smartphone;
        this.quality = quality;
        this.price = price;
    }

    public String getMaitem() {
        return maitem;
    }

    public void setMaitem(String maitem) {
        this.maitem = maitem;
    }

    public Smartphone getSmartphone() {
        return smartphone;
    }

    public void setSmartphone(Smartphone smartphone) {
        this.smartphone = smartphone;
    }

    public int getQuality() {
        return quality;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
