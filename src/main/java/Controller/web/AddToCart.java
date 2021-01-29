package Controller.web;

import Model.Cart;
import Model.CartItem;
import Model.Smartphone;
import Model.SmartphoneEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddToCart", value = "/AddToCart")
public class AddToCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cart cart = (Cart) SessionUtil.getInstance().getValue(request, "cart");
        if (cart == null) {
            cart = new Cart();
            SessionUtil.getInstance().putValue(request, "cart", cart);
        }
        String masp = request.getParameter("masp");
        System.out.println(masp);
        SmartphoneEntity se = new SmartphoneEntity();
        Smartphone s = se.getSmartphoneByMasp(masp);
        CartItem cartItem = new CartItem(masp, s.getHinh_mo_ta_1(), s.getTen_san_pham(), s.getGia(), 1);
        cart.put(cartItem);
        response.sendRedirect(request.getContextPath() + "/Home");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
