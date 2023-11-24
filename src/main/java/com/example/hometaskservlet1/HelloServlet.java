package com.example.hometaskservlet1;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
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
    public String arithmeticAction(String firstNum,String secondNum, String action)
    {
        Double result=0.0;
        try
        {
            Double firstDouble = Double.valueOf(firstNum);
            Double secondDouble = Double.valueOf(secondNum);
            if(action.equals("+"))
            {
                result = firstDouble+secondDouble;
            }
            else if(action.equals("-"))
            {
                result = firstDouble-secondDouble;
            }
            else if(action.equals("*"))
            {
                result = firstDouble*secondDouble;
            }
            else if(action.equals("/"))
            {
                result = firstDouble/secondDouble;
            }
            else if(action.equals("%"))
            {
                result = firstDouble%secondDouble;
            }
        }
        catch (NumberFormatException e)
        {
            return e.getMessage();
        }
        return "Result of action '"+action+"' - "+String.valueOf(result);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String country = request.getParameter("country");
        String arithmeticAction = request.getParameter("arithmeticAction");
        String firstNum = request.getParameter("firstNum");
        String secondNum = request.getParameter("secondNum");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1> name - " + name + "</h1>");
        out.println("<h1> surname - " + surname + "</h1>");
        out.println("<h1> age - " + age + "</h1>");
        out.println("<h1> gender - " + gender + "</h1>");
        out.println("<h1> country - "+country+"</h1>");
        out.println("<h1>"+ getVal(id)+"</h1>");
        out.println("<h1>"+arithmeticAction(firstNum,secondNum,arithmeticAction));
        out.println("</body></html>");
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {}
    public void destroy() {}
}