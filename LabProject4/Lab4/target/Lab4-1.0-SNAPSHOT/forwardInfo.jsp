<%-- 
    Document   : forwardInfo
    Created on : Apr 26, 2024, 12:05:36 AM
    Author     : HARINATUL MUFLIHUN BINTI HASNUL MUNAWAR S67604
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>&lt;Forwarded_Action Example in JSP&gt;</title>
    </head>
    <body>
        <% String name = request.getParameter("U_Name"); %>
        <% String Email = request.getParameter("Email"); %>
        <% String Nationality = request.getParameter("Nationality"); %>
        <% String Background = request.getParameter("Background"); %>
        <% if (name != null) { %>
        <br><br><br><h2 align="center">
            
            <%=name%><br>
            <%=Email%><br>
            <%=Nationality%><br>
            <%=Background%><br>
            
            <% out.print("Today is: " + java.util.Calendar.getInstance().getTime()); %>
            
        </h2></b></br>
        <%}%>
    </body>
</html>
