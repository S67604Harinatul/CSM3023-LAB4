<%-- 
    Document   : insuranceQuotation
    Created on : Apr 26, 2024, 1:27:57 AM
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
        <h1>Insurance Quotation</h1>
        <form action="processInsuramceQuo.jsp" method="post">
        <fieldset>
            <legend>Insurance Calculation</legend>
            <label for="ICNo">ICNo*</label>
            <input type="text" id="ICNo" name="ICNo" placeholder="E.g. 821210-05-3478"><br><br>
            
            <label for="Name">Name*</label>
            <input type="text" id="Name" name="Name" placeholder="Enter name"><br><br>
            
            <label for="Market Price">Market Price*</label>
            <input type="text" id="price" name="price" placeholder="Price"><br><br>
            
            <label for="CoverageType">Coverage Type</label>
            <select id="CoverageType" name="CoverageType">
                <option value="1">Third Party</option>
                <option value="2">Comprehensive</option>
            </select><br><br>
            
            <label for="NCD">No Claims Discount(NCD)</label>
            <select id="NCD" name="NCD">
                <option value="10">10%</option>
                <option value="25">25%</option>
                <option value="35">35%</option>
                <option value="55">55%</option>
            </select><br>
            <p>
            <input type="submit" value="Submit" id="btnSubmit"/>
            <input type="reset" value="Cancel" id="btnCancel"/>
            </p>
            </form>
        </fieldset>
    </body>
</html>
