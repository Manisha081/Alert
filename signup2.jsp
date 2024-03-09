
<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>

<%
int id=0;

PreparedStatement ps=null;

	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");


	String email = request.getParameter("email");	
	String tele = request.getParameter("ph");
	String city = request.getParameter("city");
	String addr = request.getParameter("addr");

       try
                {	  

Connection con=databasecon.getconnection();
ps=con.prepareStatement("INSERT INTO signup(name,password,email,phone,city, address)VALUES(?,?,?,?,?,?)");


ps.setString(1,name);
ps.setString(2,pwd);
ps.setString(3,email);
ps.setString(4,tele);
ps.setString(5,city);
ps.setString(6,addr);

int s = ps.executeUpdate();

response.sendRedirect("index.jsp?id="+email);

}

catch(Exception ex){

out.println("Error in connection : "+ex);

}




%>
       
