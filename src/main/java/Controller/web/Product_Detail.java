package Controller.web;

import Model.Smartphone;
import Model.SmartphoneEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Product_Detail", value = "/Product_Detail")
public class Product_Detail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String masp = request.getParameter("idProduct");
        SmartphoneEntity se = new SmartphoneEntity();
        Smartphone smartphone = se.getSmartphoneByMasp(masp);
        request.setAttribute("d", smartphone);
////        request.getRequestDispatcher("View/web/product_detail.jsp").forward(request, response);
        request.getRequestDispatcher("/View/web/product_detail.jsp").forward(request, response);


    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String masp = request.getParameter("idProduct");
//        SmartphoneEntity se = new SmartphoneEntity();
//        Smartphone smartphone = se.getSmartphoneByMasp(masp);
//        request.setAttribute("d", smartphone);
////        request.getRequestDispatcher("View/web/product_detail.jsp").forward(request, response);
//        request.getRequestDispatcher("/View/web/product_detail.jsp").forward(request, response);
//
//
//    }
}
