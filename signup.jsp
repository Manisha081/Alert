<%
String title="Registration";

%>


												
<%@ include file="header.jsp"%>
	<div class="error-top up">

	  <div class="login">
		<h3 class="inner-tittle t-inner"></h3>
		<form method="post" action="signup2.jsp">

<center>
<table id="tab" width="50%">
<tr><td>
		<input class="form-control"  type="text" class="text" placeholder="Your Name" required name="name">
<tr><td>
		
		<input class="form-control"  type="text" class="text" placeholder="E-mail address" required name="email">
<tr><td>
		

		<input class="form-control"  type="password" placeholder="Password" required name="pwd">
<tr><td>

		<input class="form-control"  type="text" class="text" placeholder="Contact Number" required name="ph">		
<tr><td>
		<input class="form-control"  type="text" class="text" placeholder="Enter Address"  required name="addr">
<tr><td>
		<input class="form-control"  type="text" class="text" placeholder="Enter Your City"  required name="city">
	<tr><td>
	
		<div class="submit"><input class="form-control"  type="submit"  value="Registration" ></form>
		<div class="clearfix"></div>

		</table>
		<%@ include file="footer.jsp"%>