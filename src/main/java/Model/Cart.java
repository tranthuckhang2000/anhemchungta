package Model;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;


public class Cart {
    private Map<String, CartItem> cart = new HashMap<>();

    public Cart() {

    }

    public CartItem put(CartItem item) {
        if (item == null) return null;
        if (cart.containsKey(item.getMasp())) {
            cart.get(item.getMasp()).add();
            return cart.get(item.getMasp());
        }

        item.setSo_luong(1);
        cart.put(item.getMasp(), item);
        return cart.get(item.getMasp());
    }

    public CartItem update(long Masp, int So_luong) {
        if (So_luong < 1) return null;
        if (cart.containsKey(Masp)) cart.get(Masp).setSo_luong(So_luong);
        return cart.get(Masp);
    }

    public CartItem remove(long Masp) {
        return cart.remove(Masp);
    }

    public long total() {
        long total = 0;
        for (CartItem item : cart.values())
            total += item.getSo_luong() * item.getGia();
        return total;
    }

    public int size() {
        int size = 0;
        for (CartItem item : cart.values())
            size += item.getSo_luong();
        return size;
    }

    public Collection<CartItem> data() {
        return cart.values();
    }
}
