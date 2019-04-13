<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <%! public int total1 = 0, total2 = 0; %>
  </head>
  <body>
    Hello <%= request.getParameter("name") %>. Welcome to our restaurant. <br>
    Your order is as follows. <br>
    <%
      String mainCourse[] = request.getParameterValues("select1");
      String sideDish[] = request.getParameterValues("select2");
    %>

    Main Course. <br>
    <%
      for(int i=0;i<mainCourse.length;i++){
        if(mainCourse[i].equals("burger")){
          total1 += 400;
        }
        else if(mainCourse[i].equals("pizza")){
          total1 += 700;
        }
        else if(mainCourse[i].equals("hotdog")){
          total1 += 300;
        }
    %>
    <h3><%= mainCourse[i] %></h3><br>
    <%
      }
    %>
    <br>
    Side Dish. <br>
    <%
      for(int i=0;i<sideDish.length;i++){
        if(sideDish[i].equals("frenchfries")){
          total2 += 100;
        }
        else if(sideDish[i].equals("coke")){
          total2 += 120;
        }
        else if(sideDish[i].equals("onion")){
          total2 += 50;
        }
    %>
    <h3><%= sideDish[i]%></h3><br>
    <%
      }
    %>

    Your final billing is Rs. <%= total1 + total2 %>;

    Click here to proceed to billing.
    <%
      session.setAttribute("total1", total1);
      session.setAttribute("total2", total2);
    %>

    <a href="billing.jsp"><button type="button" name="button">Proceed</button></a>

  </body>
</html>
