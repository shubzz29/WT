<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Verification</title>
</head>
<body>

<%
	String uname = request.getParameter("username");
	String pass = request.getParameter("password");
	
	String url = "jdbc:mysql://localhost:3306/Practise";
	String username = "shubh";
	String password = "viratkohli";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		PreparedStatement st = con.prepareStatement("select * from users where uname = ? and passw = ?");
		st.setString(1, uname);
		st.setString(2, pass);
		ResultSet rs = st.executeQuery();
		if(rs.next()) {
			session.setAttribute("uname", uname);
			response.sendRedirect("Process.jsp");
		}else{
			response.sendRedirect("fail.jsp");
		}
		
	}catch(Exception e){
		out.write("Exception"+e.toString());
	}
%>



</body>
</html>