
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name= null;

try{

			Connection con1 = databasecon.getconnection();
			Statement st1 = con1.createStatement();
				
			String sss1 = "select * from signup where email='"+a+"' && password='"+b+"' ";

			System.out.println(sss1);

				ResultSet rs1=st1.executeQuery(sss1);
				if(rs1.next())
				{

					name=rs1.getString("name");
					session.setAttribute("name",name);
					session.setAttribute("email",a);
					response.sendRedirect("user_home.jsp");

					}
					else{
					response.sendRedirect("index.jsp?id2=fail");

					}

}
catch(Exception e1)
{
e1.printStackTrace();
}

%>