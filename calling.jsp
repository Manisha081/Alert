
<%@ page import="java.sql.*,databaseconnection.*"%>
<%String title="Calling";%>

<%@ include file="uheader.jsp"%>



<center>
<table>
<tr>
	<td>Calling to Emergency contacts..
	<td></td>
</tr>
</table></center>

<%

   String id=(String)session.getAttribute("email");		
                   
 
int count=1;

	Connection conn_obj = databasecon.getconnection();

//System.out.println(conn_obj);
	Statement stmt = conn_obj.createStatement();
	ResultSet res_set=stmt.executeQuery("select * from contacts where email='"+id+"'");
%>	

<h3>
       
<table id="tab" align="center" cellpadding="10" >
<tr><td><h3><font size="" color="#004f9d"><b><b><td><h3><font size="" color="#004f9d"><b>Name<td><h3><font size="" color="#004f9d"><b>Phone Number
<%
int i=0;
while(res_set.next())
	{
		%>

<tr><td><img src="images/call.gif" width="34" height="34" border="0" alt="">
<td><%=res_set.getString(1)%>
<td><%=res_set.getString(2)%>
<%
	}
%>	
</table>


<%@ include file="footer.jsp"%>
