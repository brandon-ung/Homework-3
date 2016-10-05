<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="calculator" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td> Hours Worked: </td>
                        <td> <input type="text" name="hours" value="" size="40" required> </td>
                    </tr>
                    
                    <tr>
                        <td> Hourly Wage: </td>
                        <td> <input type="text" name="wage" value="" size="40" required> </td>
                    </tr>
                    
                    <tr>
                        <td> Pre-tax Deductions: </td>
                        <td> <input type="text" name="pretax" value="" size="40" required> </td>
                    </tr>
                    
                    <tr>
                        <td> Post-tax Deductions: </td>
                        <td> <input type="text" name="posttax" value="" size="40" required> </td>
                    </tr>
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>
