package com.example.hometaskservlet1;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public String getVal(String value)
    {
        Double val;
        try
        {
            val = Double.valueOf(value);
        }
        catch (Exception exception)
        {
            return exception.getMessage();
        }
        return "result value = "+String.valueOf(val*2);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        String id = request.getParameter("id");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1> id = " + id + "</h1>");
        out.println("<h1>"+ getVal(id)+"</h1>");
        out.println("</body></html>");
    }
    public void destroy() {
    }
}