<%
String session_u_name = (String)session.getAttribute("userEmail");
out.print("Hi "+session_u_name);
%>