<%@ Page Language="vb" AutoEventWireup="false" Codebehind="NewMachineryMasterEdit.aspx.vb" Inherits="WebApplication2.NewMachineryMasterEdit" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>NewMachineryMasterEdit</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">

         <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
         <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
       <link rel="stylesheet" href="../../StyleSheet1.css" />
	</HEAD>
	<body >
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
<!--/.Navbar -->
        <div class="container">
		<form id="Form1" method="post" runat="server">
              <div class="row">
    
                  <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
      </div>
            <div class="row"><div class="table-responsive">
			<TABLE id="Table1" class="table">
				<TR>
					<TD vAlign="top" align="middle" colSpan="6"><FONT size="5">Machinery Master -- Edit</FONT><hr class="prettyline" /></TD>
				</TR>
				<TR>
					<TD colSpan="6"><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
				</TR>
				<TR>
					<TD>MachineCode</TD>
					<TD>:</TD>
					<TD colSpan="4"><asp:textbox id="txtMachine" runat="server" AutoPostBack="True" CssClass="form-control" Width="400px"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>Description</TD>
					<TD>:</TD>
					<TD colSpan="4"><asp:textbox id="txtDescription" runat="server" CssClass="form-control" Width="400px"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>AMBaseDate</TD>
					<TD>:</TD>
					<TD><asp:textbox id="txtAMBasedate" runat="server" CssClass="form-control"></asp:textbox></TD>
					<TD>Manufacturer</TD>
					<TD style="WIDTH: 10px">:</TD>
					<TD><asp:textbox id="txtManufacturer" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>Model</TD>
					<TD>:</TD>
					<TD><asp:textbox id="txtModel" runat="server" CssClass="form-control"></asp:textbox></TD>
					<TD>Vendor</TD>
					<TD style="WIDTH: 10px">:</TD>
					<TD><asp:textbox id="txtVendor" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>PONumber</TD>
					<TD>:</TD>
					<TD><asp:textbox id="txtPO" runat="server" CssClass="form-control"></asp:textbox>(9char)</TD>
					<TD>PODate</TD>
					<TD style="WIDTH: 10px">:</TD>
					<TD><asp:textbox id="txtPODt" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>Cost</TD>
					<TD>:</TD>
					<TD><asp:textbox id="txtCost" runat="server" CssClass="form-control"></asp:textbox></TD>
					<TD>DateInService</TD>
					<TD style="WIDTH: 10px">:</TD>
					<TD><asp:textbox id="txtDtInService" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>WarrnatyFrom</TD>
					<TD>:</TD>
					<TD><asp:textbox id="txtWarrantyFrom" runat="server" CssClass="form-control"></asp:textbox></TD>
					<TD>WarrantyTo</TD>
					<TD style="WIDTH: 10px">:</TD>
					<TD><asp:textbox id="txtWarrantyTo" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD vAlign="top" align="middle" colSpan="6"><asp:button id="btnSave" runat="server" Text="Update" CssClass="button button2"></asp:button></TD>
				</TR>
			</TABLE>
		</div></div></form></div>
  <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>	</body>
</HTML>
