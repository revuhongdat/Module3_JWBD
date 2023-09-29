package com.example.simple_dictionary;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "translationServlet", value = "/translate")
public class TranslationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("book", "Quyển vở");
        dictionary.put("computer", "Máy tính");
        String input = req.getParameter("txtSearch");
        PrintWriter writer = resp.getWriter();
        String output = dictionary.get(input);
        if (output != null) {
            writer.println("Word: " + input);
            writer.println("Result: " + output);
        } else {
            writer.println("Not found");
        }
    }
}