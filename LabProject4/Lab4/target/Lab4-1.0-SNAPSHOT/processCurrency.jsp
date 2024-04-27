<%-- 
    Document   : processCurrency
    Created on : Apr 24, 2024, 4:21:59 PM
    Author     : HARINATUL MUFLIHUN BINTI HASNUL MUNAWAR S67604
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Currency Conversion</title>
</head>
<body>
    <h1>Use JSP Declaration tag, JSP Scriptlet and JSP Expression in application</h1>

    <%! 
        // Define constants
        final double USD = 3.92;
        final double STG = 5.96;
        final double EURO = 4.47;

        // Define method to perform currency exchange
        private double calculateRate(String currency, double amount) {
            double currencyChange = 0.00f;
            if (currency.equals("1")) {
                currencyChange = (double) (amount * USD);
            } else if (currency.equals("2")) {
                currencyChange = (double) (amount * STG);
            } else if (currency.equals("3")) {
                currencyChange = (double) (amount * EURO);
            }
            return currencyChange;
        }
    %>
    
    <% 
        // Retrieve values from the form
        String amountInt = request.getParameter("Amount");
        String currencyStr = request.getParameter("currency");
        double amount = Double.parseDouble(amountInt);
        int currency = Integer.parseInt(currencyStr);
        
        // Calculate currency conversion
        double currencyChange = calculateRate(currencyStr, amount);
    %>

    <p style="color: purple;">Amount in Ringgit Malaysia is <%= amount %></p>
    <p style="color: purple;">Amount in 
        <% 
            if (currency == 1) {
                out.print("USD");
            } else if (currency == 2) {
                out.print("Pound Sterling");
            } else if (currency == 3) {
                out.print("Euro");
            }
        %> 
        is <%= currencyChange %>
    </p>
</body>
</html>
