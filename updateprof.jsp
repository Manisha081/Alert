
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@  page import="java.io.*,java.sql.*"%>
   <%
   String id=(String)session.getAttribute("email");		
                   
Connection con=databasecon.getconnection();

Statement st1 = con.createStatement();

st1.executeUpdate("update signup set phone='"+request.getParameter("ph")+"', address='"+request.getParameter("addr")+"' ,city='"+request.getParameter("city")+"'  where email='"+id+"'");
response.sendRedirect("ViewProfile.jsp?id=succ");
%>



