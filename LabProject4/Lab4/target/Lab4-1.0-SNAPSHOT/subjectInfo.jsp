<%-- 
    Document   : subjectInfo
    Created on : Apr 25, 2024, 1:16:26 AM
    Author     : Harinatul Muflihun Binti Hasnul Munawar S67604
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP standard Action</title>
    </head>
    <body>
        <h1>Calling subjectInfo.jsp page</h1>
        <p>Code = <%=request.getParameter("code")%></p>
        <p>Subject = <%=request.getParameter("subject")%></p>
        <p>Credit = <%=request.getParameter("credit")%></p>
    </body>
</html>
