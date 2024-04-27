<%-- 
    Document   : processInsuramceQuo
    Created on : Apr 26, 2024, 1:36:25 PM
    Author     : HARINATUL MUFLIHUN BINTI HASNUL MUNAWAR S67604
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insurance Quotation</title>
    </head>
    <body>
        <fieldset>
            <legend>Details of Insurance Quotation</legend>
        <%!
            double total;
            double amount;
            String price, CoverageType, NCD;
            String CoverageTypeString;
        %>
        
        <%
            price = request.getParameter("price"); 
            CoverageType = request.getParameter("CoverageType");
            NCD = request.getParameter("NCD");
            amount = Double.parseDouble(price);
            CoverageTypeString = "";
            total = 0.0;

            if (CoverageType.equals("1")) { 
                CoverageTypeString = "Third Party";
                
                if (NCD.equals("10")) {
                    total = 0.033 * amount;
                }
                else if (NCD.equals("25")) {
                    total = 0.025 * amount;
                }
                else if (NCD.equals("35")) {
                    total = 0.018 * amount;
                }
                else if (NCD.equals("55")) {
                    total = 0.012 * amount;
                }
            }
            else if (CoverageType.equals("2")) { 
                CoverageTypeString = "Comprehensive";
                
                if(NCD.equals("10")) {
                    total = (0.038)*amount;
                }
                else if (NCD.equals("25")) {
                    total = (0.03)*amount;
                }
                else if (NCD.equals("35")) {
                    total = (0.024)*amount;
                }
                else if (NCD.equals("55")) {
                    total = (0.018)*amount;
                }
                
            }
            
        double gst = 0.06*total;
        double finalTotal = total + gst;
        
        %>
        <p style="color:purple">IC No: <%=request.getParameter("ICNo")%></p>
        <p style="color:purple">Customer Name: <%=request.getParameter("Name")%></p>
        <p style="color:purple">Market Price: <%=request.getParameter("price")%></p>
        <p style="color:purple">Coverage Type: <%=request.getParameter("CoverageType")%></p>
        <p style="color:purple">No Claim Discount (NCD): <%= NCD %>%</p>
        <p style="color:purple">Insurance amount : <%= String.format("%.2f", total) %></p>
        <p style="color:purple">6% GST: <%= String.format("%.2f", gst) %></p>
        <p style="color:purple">Final Amount (with 6% GST): <%= String.format("%.2f", finalTotal) %></p>
       </fieldset>         
    </body>
</html>
