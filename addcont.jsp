
<%@ page import="java.sql.*,databaseconnection.*"%>

<%
String name=request.getParameter("name");
String ph=request.getParameter("ph");
%>
<%
int i=0;


   String id=(String)session.getAttribute("email");		
                   

Connection conn_obj=databasecon.getconnection();
Statement stmt = conn_obj.createStatement();
	try{
	i=stmt.executeUpdate("insert into contacts values('"+name+"','"+ph+"','"+id+"')");
	response.sendRedirect("ViewProfile.jsp?id=level-1");
	}
	catch(Exception e)
	{
		System.out.println("Err:"+e);
		return;
	}
	

%>	

