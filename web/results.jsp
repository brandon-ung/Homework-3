<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator Results</title>
        <link rel="stylesheet" type="text/css" href="calcstyle.css" media="screen">
    </head>
    
    <%
    DecimalFormat fmt = new DecimalFormat("$###,###.00");
    DecimalFormat percent = new DecimalFormat ("#%");
    int totalHours = Integer.parseInt(request.getParameter("hours"));
    double wage = Double.parseDouble(request.getParameter("wage"));
    String wageString = fmt.format(wage);
    double pretax = Double.parseDouble(request.getParameter("pretax"));
    String pretaxString = fmt.format(pretax);
    double posttax = Double.parseDouble(request.getParameter("posttax"));
    String posttaxString = fmt.format(posttax);
    int overtime = 0;
        if (totalHours > 60)
            overtime = totalHours - 40;
        else
            overtime = 0;
    double overtimeRate = 1.5 * wage;
    String overtimeRateString = fmt.format(overtimeRate);
    double gross ;
        if (totalHours > 40)
        gross = ((overtime-40) * overtimeRate) + ((totalHours - overtime) * wage);
        else
        gross = totalHours * wage;
    String grossString = fmt.format(gross);
    double pretaxPay = gross - pretax;
    String pretaxPayString = fmt.format(pretaxPay);
    double tax ;
        if (gross > 500)
            tax = 0.22;
        else
            tax = 0.18;
    String taxString = percent.format(tax);
    double posttaxPay = pretaxPay - (tax * pretaxPay);
    String posttaxPayString = fmt.format(posttaxPay);
    double netPay = posttaxPay - posttax;
    String netPayString = fmt.format(netPay);
    %>
    
    <body>
        <h1>Salary Calculator Information</h1>
        
        <table id="resultTable">
            <tbody>
                <tr>
                    <td> Total Hours Worked: </td>
                    <td> <%= totalHours %> </td>
                </tr>
                
                <tr>
                    <td> Hourly Wage Rate: </td>
                    <td> <%= wageString %> </td>
                </tr>
                
                <tr>
                    <td> Overtime Hours: </td>
                    <td> <%= overtime %></td>
                </tr>
                
                <tr>
                    <td> Overtime Hourly Rate: </td>
                    <td> <%= overtimeRateString %></td>
                </tr>
                
                <tr>
                    <td> Gross Pay: </td>
                    <td> <%= grossString %></td>
                </tr>
                
                <tr>
                    <td> Pre-tax Deductions: </td>
                    <td> <%= pretaxString %> </td>
                </tr>
                
                <tr>
                    <td> Pre-tax Pay: </td>
                    <td> <%= pretaxPayString %> </td>
                </tr>
                
                <tr>
                    <td> Tax Amount: </td>
                    <td> <%= taxString %> </td>
                </tr>
                
                <tr>
                    <td> Post-tax Pay: </td>
                    <td> <%= posttaxPayString %> </td>
                </tr>
                
                <tr>
                    <td> Post-tax Deductions: </td>
                    <td> <%= posttaxString %> </td>
                </tr>
                
                <tr>
                    <td> Net Pay: </td>
                    <td> <%= netPayString %> </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
