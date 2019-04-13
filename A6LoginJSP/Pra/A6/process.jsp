<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <%
      String uname = request.getParameter("uname");
      String password = request.getParameter("password");

      out.println("<h1> Welcome " + uname + " </h1>");
    %>
    <hr>

    <a href="logout.jsp">Logout</a>
  </body>
</html>
