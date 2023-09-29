package com.example.product_discount_calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "productDiscountCalculator", value = "/display-discount")
public class ProductDiscountCalculator extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String description = req.getParameter("description");
        double listPrice = Double.parseDouble(req.getParameter("listPrice"));
        double discountPercent = Double.parseDouble(req.getParameter("discountPercent"));
        double discountAmount  = listPrice * discountPercent * 0.01;
        double discountPrice = listPrice - discountAmount;
        PrintWriter writer = resp.getWriter();
        writer.println("Description: " + description);
        writer.println("listPrice: " + listPrice);
        writer.println("Discount Amount: " + discountAmount);
        writer.println("Discount Price: " + discountPrice);
    }
}
