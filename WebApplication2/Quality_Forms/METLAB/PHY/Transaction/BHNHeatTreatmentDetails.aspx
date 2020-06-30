<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BHNHeatTreatmentDetails.aspx.vb" Inherits="WebApplication2.BHNHeatTreatmentDetails" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>BHNHeatTreatmentDetails</title>
		<LINK id="mss" href="/mss.css" rel="stylesheet">
		<META content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<META content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<META content="JavaScript" name="vs_defaultClientScript">
		<META content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">

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
     <link rel="stylesheet" href="../../../../StyleSheet1.css" />
	</HEAD>
	<BODY >
                <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../../../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../../../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
<!--/.Navbar -->
        <div class="container">
		<FORM id="Form1" method="post" runat="server">
            <div class="row"><div class="table-responsive">
			<asp:Panel id="Panel1"  runat="server">
				<TABLE id="Table2" class="table">
					<TR>
						<TD align="middle">HARDNESS SURVEY - HEAT TREATMENT 
							DETAILS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<hr class="prettyline" />
							<asp:label id="lblMode" runat="server" ForeColor="Blue"></asp:label></TD>
					</TR>
				</TABLE>
				<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
				<TABLE id="Table3" class="table">
					<TR>
						<TD>WheelNumber</TD>
						<TD>
							<asp:dropdownlist id="ddlWheelNumber" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
						<TD>
							<asp:textbox id="txtWheel" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
						<TD>LabNumber:</TD>
						<TD>
							<asp:label id="lblLabNum" runat="server" ></asp:label></TD>
					</TR>
				</TABLE>
				<TABLE id="Table4" class="table">
					<TR>
						<TD>WheelChargeInDate</TD>
						<TD>
							<asp:textbox id="txtNFChargeDate" runat="server" CssClass="form-control"></asp:textbox></TD>
						<TD>Time(hh:mm)</TD>
						<TD>
							<asp:textbox id="txtNFChargeTime" runat="server" CssClass="form-control"></asp:textbox></TD>
						<TD>WheelChargeCondition</TD>
						<TD>
							<asp:dropdownlist id="ddlNFChargeCondition" runat="server" CssClass="form-control ll">
								<asp:ListItem Value="Hot" Selected="True">Hot</asp:ListItem>
								<asp:ListItem Value="Cold">Cold</asp:ListItem>
							</asp:dropdownlist></TD>
						<TD>WheelDischargeTime(hh:mm)</TD>
						<TD>
							<asp:textbox id="txtNFDischargeTime" runat="server" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
					</TR>
				</TABLE>
				<TABLE id="Table5" class="table">
					<TR>
						<TD>QuencherNo:</TD>
						<TD>
							<asp:dropdownlist id="ddlQuencherNo" runat="server" CssClass="form-control ll"></asp:dropdownlist></TD>
						<TD>Duration:</TD>
						<TD>
							<asp:textbox id="txtQTimeMin" runat="server" CssClass="form-control" MaxLength="1"></asp:textbox></TD>
						<TD>min</TD>
						<TD>
							<asp:textbox id="txtQTimeSec" runat="server" CssClass="form-control"></asp:textbox></TD>
						<TD>sec</TD>
					</TR>
				</TABLE>
				<TABLE id="Table6" class="table">
					<TR>
						<TD>ZoneNumber</TD>
						<TD>Zone 1</TD>
						<TD>Zone 2</TD>
						<TD>Zone 3</TD>
						<TD>Zone 4</TD>
						<TD>Zone 5</TD>
						<TD>Zone 6</TD>
						<TD>Zone 7</TD>
						<TD>Zone 8</TD>
					</TR>
					<TR>
						<TD>NFTemp (CloseToDischargetime)</TD>
						<TD>
							<asp:textbox id="txtNFZone1" tabIndex="-1" runat="server" CssClass="form-control" MaxLength="3">0</asp:textbox></TD>
						<TD>
							<asp:textbox id="txtNFZone2" runat="server" CssClass="form-control" MaxLength="4"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtNFZone3" runat="server" CssClass="form-control" MaxLength="4"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtNFZone4" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtNFZone5" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtNFZone6" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtNFZone7" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD></TD>
					</TR>
					<TR>
						<TD>DFTemp(CloseToDischargeTime)</TD>
						<TD><asp:textbox id="txtDFZone1" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD><asp:textbox id="txtDFZone2" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD><asp:textbox id="txtDFZone3" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtDFZone4" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtDFZone5" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtDFZone6" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtDFZone7" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtDFZone8" runat="server" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
					</TR>
				</TABLE>
				<TABLE id="Table7" class="table">
					<TR>
						<TD>HubCooler</TD>
						<TD><asp:dropdownlist id="ddlHubCooler1" runat="server" CssClass="form-control ll" Enabled="False"></asp:dropdownlist></TD>
						<TD>
							<asp:dropdownlist id="ddlHubCooler2" runat="server" CssClass="form-control ll" Enabled="False"></asp:dropdownlist></TD>
						<TD>
							<asp:dropdownlist id="ddlHubCooler3" runat="server" CssClass="form-control ll" Enabled="False"></asp:dropdownlist></TD>
					</TR>
					<TR>
						<TD>DurationInSec</TD>
						<TD>
							<asp:textbox id="txtHC1" runat="server" CssClass="form-control" MaxLength="2"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtHC2" runat="server" CssClass="form-control" MaxLength="2"></asp:textbox></TD>
						<TD>
							<asp:textbox id="txtHC3" runat="server" CssClass="form-control" MaxLength="2"></asp:textbox></TD>
					</TR>
				</TABLE>
				<TABLE id="Table1" class="table">
					<TR>
						<TD vAlign="top" align="middle" colSpan="10">
							<asp:button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:button id="btnClear" runat="server" Text="Clear" CssClass="button button2"></asp:button></TD>
					</TR>
				</TABLE>
			</asp:Panel>
                </div></div>
		</FORM>
            </div>
          <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</BODY>
</HTML>
