<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="CSS/login.css"/>
</head>
<body>
		<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if(session.getAttribute("uname")==null){
			response.sendRedirect("login.html");
		}
		%>

	<div align="center" class="div1">
		<h1>Welcome page</h1>
		<h2> Welcome Mr. <%
			if(session.getAttribute("uname")!=null){
				out.write(session.getAttribute("uname").toString());
			}
		%> </h2>
		<form action="logout">
			<input id="buttn" type="submit" value="Logout"/>
		</form>
	</div>

</body>
</html>