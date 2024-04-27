<%-- 
    Document   : calculateBMI
    Created on : Apr 27, 2024, 10:49:21 AM
    Author     : HARINATUL MUFLIHUN BINTI HASNUL MUNAWAR S67604
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>BMI Result</title>
</head>
<body>
    <fieldset>
        <legend>BMI Result</legend>
        <%!
            double calculateBMI(double weight, double height) {
                return weight / (height * height);
            }

            String determineWeightStatus(double bmi) {
                if (bmi < 18.5) {
                    return "Underweight";
                } else if (bmi >= 18.5 && bmi <= 25) {
                    return "Optimal weight";
                } else {
                    return "Overweight";
                }
            }
        %>

        <%
            double weight = Double.parseDouble(request.getParameter("weight"));
            double height = Double.parseDouble(request.getParameter("height"));

            double bmi = calculateBMI(weight, height);

            String weightStatus = determineWeightStatus(bmi);
        %>

        <p>Your BMI is: <%= String.format("%.2f", bmi) %></p>
        <p>Weight status: <%= weightStatus %></p>
    </fieldset>
</body>
</html>
