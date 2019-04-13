import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class MyServlet extends HttpServlet {

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{

    response.setContentType("text/html");

    PrintWriter out = response.getWriter();

    double tax = Float.parseFloat(request.getParameter("tax"));
    double total;

    if(tax < 250000){
      total = tax;
    }
    else if(tax < 500000){
      total = tax*1.1;
    }
    else{
      total = tax*1.2;
    }

    out.println("<h1> Your total tax is: " + total + " </h1>");

  }

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
    doGet(request, response);
  }
}
