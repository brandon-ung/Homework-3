<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator Results</title>
    </head>
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
