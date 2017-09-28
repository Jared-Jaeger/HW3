<%-- 
    Document   : index
    Created on : Sep 27, 2017, 2:10:00 PM
    Author     : itzjs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="CSS_Formating.css"/>
    </head>
    <body>
        <h1>Salary Calculator</h1>
        <br>
        <hr class="style18">
        <br>
        <form name="calcForm" action="results.jsp" method="post">
            <div class ="centerAlign">
            <table>
                <tbody>
                    
                     <tr>
                         <td>Hours Worked:</td>
                         <td><input type="integer" name="hoursWorked" value="" size="50"></td> 
                     </tr>
                    
                     <tr>
                         <td>Hourly Rate:</td>
                         <td><input type="integer" name="hourlyPay" value="" size="50"></td> 
                     </tr>
                     
                     <tr>
                         <td>Pre-tax Default:</td>
                         <td><input type="integer" name="preTax" value="" size="50"></td> 
                     </tr>
                     
                     <tr>
                         <td>Post-tax Default:</td>
                         <td><input type="integer" name="postTax" value="" size="50"></td> 
                     </tr>
                </tbody>
            </table>
                <br>
            <input type="reset" value ="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            </div>
        </form>
    </body>
</html>
