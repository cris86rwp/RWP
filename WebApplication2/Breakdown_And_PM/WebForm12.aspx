<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm12.aspx.vb" Inherits="WebApplication2.WebForm12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>AutoComplete Text Box using jQuery in ASP.NET</title>   
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />   
    <script src="jquery.min.js" type="text/javascript"></script>   
    <script src="jquery-ui.min.js" type="text/javascript"></script>   
       
    <script type="text/javascript">   
        $(document).ready(function() {   
            SearchText();   
        });   
        function SearchText() {   
            $("#txtEmpName").autocomplete({   
                source: function(request, response) {   
                    $.ajax({   
                        type: "POST",   
                        contentType: "application/json; charset=utf-8",   
                        url: "Default.aspx/GetEmployeeName",   
                        data: "{'empName':'" + document.getElementById('txtEmpName').value + "'}",   
                        dataType: "json",   
                        success: function(data) {   
                            response(data.d);   
                        },   
                        error: function(result) {   
                            alert("No Match");   
                        }   
                    });   
                }   
            });   
        }   
    </script>   
   
</head>   
<body>   
    <form id="form1" runat="server">   
    <table cellpadding="10" cellspacing="10" style="border: solid 15px Green; background-color: SkyBlue;"   
        width="50%" align="center">   
        <tr>   
            <td>   
                <span style="color: Red; font-weight: bold; font-size: 18pt;">Enter Employee Name:</span>    
                <asp:TextBox ID="txtEmpName" runat="server" Width="160px" />   
            </td>   
        </tr>   
    </table>   
    </form>   
</body> 
    </html>