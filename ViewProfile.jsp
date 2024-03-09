<%@ page  import="java.sql.*" import="databaseconnection.*" %>
	  <%String title="View Profile";%>
<%@ include file="uheader.jsp"%>
	  
					   <%
                                                       String id2=request.getParameter("id");
                                                       if(id2!=null )
                                                       {
                                                           out.println("<script type=text/javascript>alert('Profile Updated successfully!! '); </script>");
                                             
                                                       }   
													  
										%>
					  
					  <%String id=(String)session.getAttribute("email");		
                         %>
<center>
<%

	Connection con1 = databasecon.getconnection();

	Statement st1 = con1.createStatement();
	
	String sss1 = "select * from signup where email='"+id+"' ";
	ResultSet rs=st1.executeQuery(sss1);
	%>
	<table  cellspacing=15 width="50%" id="tab">
	<%
	while(rs.next())
	{%>

		<tr><td><b>Name: <td><%=rs.getString("name")%>
		<tr><td><b>Email: <td><%=rs.getString("email")%>
		<form method="post" action="updateprof.jsp">
			
		<tr><td><b>Phone: <td><input type="text" class="form-control" name="ph" value="<%=rs.getString("phone")%>">
		<tr><td><b>City: <td><input type="text" class="form-control" name="city" value="<%=rs.getString("city")%>">
		<tr><td><b>Address: <td><textarea name="addr" rows=""  class="form-control"cols=""><%=rs.getString("address")%></textarea>
		<tr><td><td><input type="submit" value="Update" class="form-control">
		
		</form>
	

	<%}
%>

</table><br>
<hr>

<h2>Emergency Contacts</h2>
<hr>

<%

 
int count=1;

	Connection conn_obj = databasecon.getconnection();

//System.out.println(conn_obj);
	Statement stmt = conn_obj.createStatement();
	ResultSet res_set=stmt.executeQuery("select * from contacts where email='"+id+"'");
%>	

<h3>
       
<table id="tab" align="center" cellpadding="10" >
<tr><td><h3><font size="" color="#004f9d"><b><b>No&nbsp;&nbsp;&nbsp;<td><h3><font size="" color="#004f9d"><b>Name<td><h3><font size="" color="#004f9d"><b>Phone Number
<%
int i=0;
while(res_set.next())
	{
		%>

<tr><td><%=++i%>
<td><%=res_set.getString(1)%>
<td><%=res_set.getString(2)%>
<%
	}
%>	
</table>
<form method="post" action="addcont.jsp">
<table id="tab" align="center" cellpadding="10" >
<tr><td><input required  type="text" name="name" placeholder="Enter Name">
<td><input required  type="text" name="ph" placeholder="Enter Phone number" >
<tr><td>
<input required  type="submit" value="   ADD  ">
</form>
</table>




<br><br><br>


<%@ include file="footer.jsp"%>