<%@ Page Language="vb" AutoEventWireup="false" Codebehind="NewMachineSparesDelete.aspx.vb" Inherits="WebApplication2.NewMachineSparesDelete" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd html 4.0 transitional//EN">
<html>
	<head runat="server">
		<title>NewMachineSparesEdit</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR" />
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE" />
		<meta content="JavaScript" name="vs_defaultClientScript" />
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
         <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../StyleSheet1.css" />
	</head>

	<body>
		<form id="Form1" method="post" runat="server">

       <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse " id="navbarSupportedContent-333">
      <ul class="navbar-nav ml-auto  navbar-center">
          <li class="nav-item"> <a class="nav-link" href="#" style="color:white; font-size:25px;">Rail Wheel Plant Bela</a></li>
      </ul>
    <ul class="navbar-nav ml-auto  navbar-right">
        <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
<div class="container">

<div class="row">
<div class="table-responsive">
     
                
    
                              <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                             <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                                 <asp:ListItem>select</asp:ListItem>
                                 <asp:ListItem>Theme1</asp:ListItem>
                                 <asp:ListItem>Theme2</asp:ListItem>
                                 <asp:ListItem>Theme3</asp:ListItem>
                             </asp:DropDownList>
                             <br />
                
			<table id="table1" class="table">
				<tr>
					<td colSpan="3"><FONT size="5">Machine Spares - Edit
							<asp:label id="lblUserID" runat="server" Visible="False"></asp:label><asp:label id="lblGrp" runat="server" Visible="False"></asp:label></FONT></td>
				</tr>
				<tr>
					<td colSpan="3"><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></td>
				</tr>
				<tr>
					<td colSpan="3"><asp:radiobuttonlist id="rdoTypeOfGroup" runat="server" RepeatLayout="Flow" CssClass="rbl" AutoPostBack="true" Repeatdirection="Horizontal">
							<asp:ListItem Value="MachinePLs" Selected="true">MachinePLs</asp:ListItem>
							<asp:ListItem Value="SubAssemblyPLs">SubAssemblyPLs</asp:ListItem>
						</asp:radiobuttonlist></td>
				</tr>
				<tr>
					<td>Machine</td>
					<td>:</td>
					<td><asp:panel id="pnlSubAssemlies" runat="server">
							<asp:DropDownList id="ddlSubAssemlies" runat="server" AutoPostBack="true" CssClass="form-control ll"></asp:DropDownList>
						</asp:panel><asp:panel id="pnlMachine" runat="server">
							<asp:DropDownList id="ddlMachines" runat="server" AutoPostBack="true" CssClass="form-control ll"></asp:DropDownList>
						</asp:panel></td>
				</tr>
				<tr>
					<td>
						PLNumber</td>
					<td>:</td>
					<td><asp:dropdownlist id="ddlPLNumber" runat="server" AutoPostBack="true" CssClass="form-control ll"></asp:dropdownlist></td>
				</tr>
				<tr>
					<td>Qty</td>
					<td>:</td>
					<td><asp:textbox id="txtQty" runat="server" CssClass="form-control"></asp:textbox>
						<asp:Label id="lblUnit" runat="server"></asp:Label></td>
				</tr>
				<tr>
					<td>Purpose</td>
					<td>:</td>
					<td><asp:textbox id="txtPurpose" runat="server" CssClass="form-control"></asp:textbox></td>
				</tr>
				<tr>
					<td vAlign="top" align="middle" colSpan="3" rowSpan="1"><asp:button id="btnSave" runat="server" Text="Delete" CssClass="button button2"></asp:button></td>
				</tr>
			</table>
    </div>
    </div>
    </div>
		</form>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
