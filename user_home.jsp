	                  <%
                                                       String message=request.getParameter("id");
                                                       
													   
													   if(message!=null && message.equalsIgnoreCase("s1"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Friend Request Sent '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Your Post is posted successfully!! '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("ok"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Operation successfull!! '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("s2"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Friend Request already Sent '); </script>");
                                                       }

			    %>





<%
String title="Welcome "+session.getAttribute("name");
%>
<%@  include file="uheader.jsp"%>
		
<br><br><br><br><br><br><br>
<%@  include file="footer.jsp"%>