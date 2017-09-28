<%-- 
    Document   : results
    Created on : Sep 28, 2017, 8:35:42 AM
    Author     : itzjs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculated Results</title>
        <link rel="stylesheet" type="text/css" href="CSS_Formating.css"/>
    </head>
    <%
    double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
    double hourlyPay = Double.parseDouble(request.getParameter("hourlyPay"));
    double preTax = Double.parseDouble(request.getParameter("preTax"));
    double postTax = Double.parseDouble(request.getParameter("postTax"));
    //created
    double hoursOt = 0;
    double hourlyPayOt = 0;
    double taxRate = 0;
    double taxAmt = 0;
    double postTaxPay = 0;
    //if function to change OT variables if hours are more than 40
    if(hoursWorked > 40){
         hoursOt = hoursWorked - 40;
        hourlyPayOt = hourlyPay * 1.5;
    }
    
    double grossPay = hourlyPay* hoursWorked + hoursOt * hourlyPayOt;
    double preTaxPay = grossPay - preTax;
    //if function to determine what tax rate
    if(grossPay > 500)
    {
        taxRate = .22;
        taxAmt = preTaxPay * taxRate;
        postTaxPay = preTaxPay - taxAmt;
        
    }
    else
    {
        taxRate = .18;
        taxAmt = preTaxPay * taxRate;
        postTaxPay = preTaxPay - taxAmt;
    }
    
    double netPay = postTaxPay - postTax;
    
    %>
    <body>
        <h1>Calculated Results</h1>
        <br>
        <hr class="style18">
        <br>
        <div class ="centerAlign">
        <table BORDER="1">
                <tbody>
                    
                     <tr>
                         <td>Total Hours Worked:</td>
                         <td><%= hoursWorked %></td> 
                     </tr>
                    
                     <tr>
                         <td>Hourly Rate:</td>
                         <td>$<%= hourlyPay %></td> 
                     </tr>
                     
                     <tr>
                         <td># Hours Overtime:</td>
                         <td><%= hoursOt %></td> 
                     </tr>
                     
                     <tr>
                         <td>Overtime Hourly Rate:</td>
                         <td>$<%= hourlyPayOt %></td>
                     </tr>
                     <tr>
                         <td>Gross Pay:</td>
                         <td>$<%= grossPay %></td>
                     </tr>
                     <tr>
                         <td>Pre-tax Deduct:</td>
                         <td>$<%= preTax %></td>
                     </tr>
                     <tr>
                         <td>Pre-tax Pay:</td>
                         <td>$<%= preTaxPay %></td>
                     </tr>
                     <tr>
                         <td>Tax Amount:</td>
                         <td>$<%= taxAmt %></td>
                     </tr>
                     <tr>
                         <td>Post-tax Pay:</td>
                         <td>$<%= postTaxPay %></td>
                     </tr>
                     <tr>
                         <td>Post-Tax Deduct:</td>
                         <td>$<%= postTax %></td>
                     </tr>
                     <tr>
                         <td>Net Pay:</td>
                         <td>$<%= netPay %></td>
                     </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
