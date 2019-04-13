<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    Welcome to payment gateway.

    <%
      int total1 = (int)session.getAttribute("total1");
      int total2 = (int)session.getAttribute("total2");


    %>
    <h2>Total amount due <%= total1 + total2 %></h2>

    <form class="" action="success.jsp" method="post">
      Enter card number <input type="number" name="card" value=""><br>
      Enter CVV <input type="number" name="cvv" value="" max="999"><br>
      <input type="submit" name="submit" value="submit"><br>
    </form>

  </body>
</html>
