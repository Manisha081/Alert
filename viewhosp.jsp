<%String title="Emergency Services";%>

	<%@ include file="uheader.jsp"%>

<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<h1></h1>


<%
%>
<%
int c=1;
try{

Connection con = databasecon.getconnection();
 Statement st=con.createStatement();
Statement  st2=con.createStatement();
%>
<br><br>
<table width="90%"id="tab"cellspacing="10">
<tr><th>Sno<th>Hospital Name<th>City<th>Email<th>Contact<th>Map
<%
ResultSet rs=st.executeQuery("SELECT * FROM  hospitals");
while(rs.next())
{
%>
<tr><td><%=c++%><td><%=rs.getString("name")%><td><%=rs.getString("city")%><td><%=rs.getString("email")%><td><%=rs.getString("mobile")%><td><a href="#" onclick="window.open('view2.jsp?lat=<%=rs.getString("latitude")%>&&lon=<%=rs.getString("longitude")%>', 'newwindow', 'width=750, height=600'); return false;">View Location</a>
<%}


}
catch(Exception e)
{
e.printStackTrace();
	}


%>
</table>
<br><br><br><br>
	<%@ include file="footer.jsp"%>
