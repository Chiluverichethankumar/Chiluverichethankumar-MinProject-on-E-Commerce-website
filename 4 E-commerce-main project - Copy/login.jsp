<%@ page import = " java.util.* " %>
<% 
String username = request.getParameter("userEmail"); 
if(username.equals("admin")){
    session.setAttribute("userEmail",username); 
    response.sendRedirect("home.jsp"); 
}else{
    out.print("Invalid Username");  
}
%>