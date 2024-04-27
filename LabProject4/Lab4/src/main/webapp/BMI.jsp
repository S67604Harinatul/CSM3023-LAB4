<%-- 
    Document   : BMI
    Created on : Apr 27, 2024, 10:46:38 AM
    Author     : HARINATUL MUFLIHN BINTI HASNUL MUNAWAR S67604
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>BMI Calculator</title>
</head>
<body>
    <fieldset>
        <legend>Enter Weight and Height</legend>
        <form action="calculateBMI.jsp" method="post">
            <label for="weight">Weight (kg):</label>
            <input type="text" id="weight" name="weight" required placeholder="0.0 kilogram"><br><br>
            
            <label for="height">Height (m):</label>
            <input type="text" id="height" name="height" required placeholder="0.0 meter"><br><br>
            
            <input type="submit" value="Calculate BMI">
            <input type="reset" value="Cancel">
        </form>
    </fieldset>
</body>
</html>
