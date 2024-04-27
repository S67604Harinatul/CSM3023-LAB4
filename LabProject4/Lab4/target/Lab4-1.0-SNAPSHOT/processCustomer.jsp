<%-- 
    Document   : processCustomer
    Created on : Apr 24, 2024, 2:46:15 PM
    Author     : HARINATUL MUFLIHUN BINTI HASNUL MUNAWAR S67604
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer</title>
    </head>
    <body>
        <h1>Use JSP Scriplet and JSP Expression in application</h1>
        <% 
            final int price = 10;
            
            //Using JSP Scriplet...
            String cust_no1 = request.getParameter("CustomerCode");
            int quantity1 = Integer.parseInt(request.getParameter("Quantity"));
            String cust_type1 = request.getParameter("CustomerType");
            
            //determine customer..
            if(cust_type1.equals("1") && quantity1 > 100) {
                out.print("You're entitle " +"10%"); %> <br> <%
                    out.print("Total amount is RM " + quantity1 * price * 0.9);
            } else if (cust_type1.equals("2") && quantity1>100) {
                out.print("You're entitle " +"25%"); %> <br> <%
                    out.print("Total amount is RM " + quantity1 * price * 0.75);
                }else {
                    out.print("You're not entitle discount..!"); %> <br> <%
                        out.print("Total amount is RM " + quantity1 * price);
                    }
        %>
    </body>
</html>
