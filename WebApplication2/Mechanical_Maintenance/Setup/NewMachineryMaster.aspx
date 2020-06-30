<%@ Page Language="vb" AutoEventWireup="false" Codebehind="NewMachineryMaster.aspx.vb" Inherits="WebApplication2.NewMachineryMaster" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>NewMachineryMaster</title>
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
			<asp:Panel id="Panel1"  runat="server">
				<TABLE id="Table2" class="table">
					<TR>
						<TD><FONT size="5">Machinery Master -- Add</FONT><hr class="prettyline" /></TD>
					</TR>
				</TABLE>
				<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label>
				<TABLE id="Table3" class="table">
					<TR>
						<TD>
							<asp:Label id="Label1" runat="server" ForeColor="Blue" Width="1121px" Visible="False">Location : Axle Control, Axle Power, Wheel Control and Wheel Power to be selected when the Machine belongs respectively and EXCLUSIVELY to that shop only</asp:Label></TD>
					</TR>
				</TABLE>
				<TABLE id="Table4" class="table">
					<TR>
						<TD>Location</TD>
						<TD>
							<asp:dropdownlist id="ddlLocation" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></TD>
						<TD>EquipmentType</TD>
						<TD>
							<asp:dropdownlist id="ddlEqpCode" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></TD>
					</TR>
					<TR>
						<TD>MachineId</TD>
						<TD>
							<asp:textbox id="txtMachine" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
						<TD>MachineCode</TD>
						<TD>
							<asp:label id="lblMachineCode" runat="server" BackColor="#C0C0FF"></asp:label></TD>
					</TR>
					<TR>
						<TD>Description</TD>
						<TD colSpan="3">
							<asp:textbox id="txtDescription" runat="server" CssClass="form-control"></asp:textbox></TD>
					</TR>
				</TABLE>
				<TABLE id="Table5" class="table">
					<TR>
						<TD>MechMaintDoneBy</TD>
						<TD>
							<asp:radiobuttonlist id="rblMechMaint" runat="server" CssClass="rbl" Enabled="False" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="MW1">MW1</asp:ListItem>
								<asp:ListItem Value="MW2">MW2</asp:ListItem>
								<asp:ListItem Value="MW3">MW3</asp:ListItem>
								<asp:ListItem Value="MA1">UTILIT</asp:ListItem>
								<asp:ListItem Value="MRT">MRT</asp:ListItem>
								<asp:ListItem Value="EMMS">EMMS</asp:ListItem>
							</asp:radiobuttonlist></TD>
					</TR>
					<TR>
						<TD>ElecMaintDoneBy</TD>
						<TD>
							<asp:radiobuttonlist id="rblElecMaint" runat="server" CssClass="rbl" Enabled="False" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="EWC">EM1</asp:ListItem>
                                <asp:ListItem Value="EWC">EM2</asp:ListItem>
                                <asp:ListItem Value="EWC">EM3</asp:ListItem>
								<asp:ListItem Value="EAC">EAC</asp:ListItem>
								<asp:ListItem Value="EWP">EWP</asp:ListItem>
								<asp:ListItem Value="EAP">EAP</asp:ListItem>
							</asp:radiobuttonlist></TD>
					</TR>
				</TABLE>
				<TABLE id="Table1" class="table">
					<TR>
						<TD>GroupCode</TD>
						<TD>
							<asp:Label id="lblGroupCode" runat="server"></asp:Label></TD>
						<TD>GroupName</TD>
						<TD>
							<asp:Label id="lblGroupName" runat="server"></asp:Label></TD>
					</TR>
					<TR>
						<TD>AMBaseDate</TD>
						<TD>
							<asp:textbox id="txtAMBasedate" runat="server" CssClass="form-control"></asp:textbox></TD>
						<TD>Manufacturer</TD>
						<TD>
							<asp:textbox id="txtManufacturer" runat="server" CssClass="form-control"></asp:textbox></TD>
					</TR>
					<TR>
						<TD>Model</TD>
						<TD>
							<asp:textbox id="txtModel" runat="server" CssClass="form-control"></asp:textbox></TD>
						<TD>Vendor</TD>
						<TD>
							<asp:textbox id="txtVendor" runat="server" CssClass="form-control"></asp:textbox></TD>
					</TR>
					<TR>
						<TD>PONumber</TD>
						<TD>
							<asp:textbox id="txtPO" runat="server" CssClass="form-control"></asp:textbox>(9char)</TD>
						<TD>PODate</TD>
						<TD>
							<asp:textbox id="txtPODt" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
					</TR>
					<TR>
						<TD>Cost</TD>
						<TD>
							<asp:textbox id="txtCost" runat="server" CssClass="form-control"></asp:textbox></TD>
						<TD>DateInService</TD>
						<TD>
							<asp:textbox id="txtDtInService" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
					</TR>
					<TR>
						<TD>WarrnatyFrom</TD>
						<TD>
							<asp:textbox id="txtWarrantyFrom" runat="server" CssClass="form-control"></asp:textbox></TD>
						<TD>WarrantyTo</TD>
						<TD>
							<asp:textbox id="txtWarrantyTo" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="middle" colSpan="6">
							<asp:button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:button></TD>
					</TR>
				</TABLE>
			</asp:Panel>
		</div></div></form></div>
          <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
