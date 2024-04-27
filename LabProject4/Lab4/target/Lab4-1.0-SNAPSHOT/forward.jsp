<%-- 
    Document   : forward
    Created on : Apr 25, 2024, 11:28:35 PM
    Author     : HARINATUL MUFLIHUN BINTI HASNUL MUNAWAR S67604
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action (forward)</title>
    </head>
    <body>
        <h2>Using jsp:forward to display user info.</h2>
        <jsp:forward page="forwardInfo.jsp">
            <jsp:param name= "U_Name" value= "Fouad Abdulameer"/>
            <jsp:param name= "Email" value= "fouadaug@gmail.com"/>  
            <jsp:param name= "Nationality" value= "Iraqi"/>
            <jsp:param name= "Background" value= "Developer"/>
        </jsp:forward>
    </body>
</html>
