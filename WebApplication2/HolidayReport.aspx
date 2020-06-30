<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HolidayReport.aspx.vb" Inherits="WebApplication2.HolidayReport" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row">
						<div class="col" vAlign="middle" align="left"  colSpan="6">
							<asp:label id="lblMessage" runat="server" ForeColor="Red" ></asp:label></div>
					</div>
           <TABLE id="Table1" class="table">
					<div class="row">
                        <div class="col-2" ><strong>Generate Report :</strong></div>
						<div class="col-2" >From Date</div>
						<div class="col">
							<asp:textbox id="txtfrDate" runat="server" CssClass="form-control" AutoPostBack="True" placeholder="dd/mm/yyyy"></asp:textbox></div>
					<div class="col" >To Date</div>
						<div class="col-2" >
							<asp:textbox id="txTtDate" runat="server" CssClass="form-control" AutoPostBack="True" placeholder="dd/mm/yyyy"></asp:textbox></div>	
                 <div class="col-2"><asp:button id="btnReport" runat="server" Text="Generate Report" borderStyle="Solid" Font-Bold="True" Font-Size="20px" CssClass="btn btn-dark"></asp:button>
						</div>  
                    </div>
                  </TABLE>
            <br />
      
  
        </div>
    </form>
</body>
</html>
