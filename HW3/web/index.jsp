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
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS_Formating.css"/>
    </head>
    <body>
        <h1>HW3</h1>
        <form name="calcForm" action="results.jsp" method="post">
            
            <table>
                <tbody>
                    
                     <tr>
                         <td>Hours Worked:</td>
                         <td><input type="Number" name="hoursWorked" value="" size="50"></td> 
                     </tr>
                    
                     <tr>
                         <td>Hourly Rate:</td>
                         <td><input type="number" name="hourlyPay" value="" size="50"></td> 
                     </tr>
                     
                     <tr>
                         <td>Pre-tax Default:</td>
                         <td><input type="number" name="preTax" value="" size="50"></td> 
                     </tr>
                     
                     <tr>
                         <td>Post-tax Default:</td>
                         <td><input type="number" name="postTax" value="" size="50"></td> 
                     </tr>
                </tbody>
            </table>
            <input type="reset" value ="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
        </form>
    </body>
</html>
