import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class FirstServlet extends HttpServlet{

  public void doPost(HttpServletRequest request, HttpServletResponse response){
    response.setContentType("text/html");

    RequestDispatcher rd = request.getRequestDispatcher("second");

    rd.forward(request, response);
  }
}
