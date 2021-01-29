package Model;

public class Payment {
    private String matt;
    private String ten_thanh_toan;

    public Payment(String matt, String ten_thanh_toan) {
        this.matt = matt;
        this.ten_thanh_toan = ten_thanh_toan;
    }

    public String getMatt() {
        return matt;
    }

    public void setMatt(String matt) {
        this.matt = matt;
    }

    public String getTen_thanh_toan() {
        return ten_thanh_toan;
    }

    public void setTen_thanh_toan(String ten_thanh_toan) {
        this.ten_thanh_toan = ten_thanh_toan;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "matt='" + matt + '\'' +
                ", ten_thanh_toan='" + ten_thanh_toan + '\'' +
                '}';
    }


}
