<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AdminEnergyConsumption.aspx.vb" Inherits="WebApplication2.AdminEnergyConsumption" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>AdminEnergyConsumption</title>
	
            <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>

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
       <link rel="stylesheet" href="../../../StyleSheet1.css" />

	</HEAD>
	<body >
		
                 <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
<!--/.Navbar -->
        <div class="container">

		<FORM id="Form1" method="post" runat="server">
              <div class="row">
    
                  <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" >
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
      </div>
            <div class="row table-responsive">

			<TABLE id="Table1"  class="table">
				<TR>
					<TD  colSpan="7"><STRONG>&nbsp;ADMIN</STRONG></TD>
					<TD ></TD>
				</TR>
				<TR>
					<TD  colSpan="7">DAILY ENERGY CONSUMPTION STATEMENT</TD>
					<TD ></TD>
				</TR>
				<TR>
					<TD  colSpan="7" rowSpan="1"><asp:label id="lblMode" runat="server" ForeColor="Blue" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" Width="101px"></asp:label></TD>
					<TD ></TD>
				</TR>
				<TR>
					<TD  colSpan="7" rowSpan="1"><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
					<TD ></TD>
				</TR>
				<TR>
					<TD  colSpan="7">DATE :	<asp:textbox id="txtDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="*"></asp:requiredfieldvalidator><asp:rangevalidator id="RangeValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="*" MinimumValue="1/1/1900" MaximumValue="1/1/9999" Type="Date"></asp:rangevalidator></TD>
					<TD ><asp:button id="btnCalculateAll" runat="server" Text="Calculate All" CssClass="button button2" CausesValidation="False" DESIGNTIMEDRAGDROP="2275"></asp:button></TD>
				</TR>
				<TR>
					<TD >SL NO</TD>
					<TD >DESCRIPTION</TD>
					<TD >INITIAL READING</TD>
					<TD >FINAL READING</TD>
					<TD >
						<P>DIFFERENCE</P>
					</TD>
					<TD >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M.F</TD>
					<TD >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UNIT CONSUMPTION</TD>
					<TD >PROGRESSIVE UNITS FOR THE MONTH</TD>
				</TR>
				<TR>
					<TD >01</TD>
					<TD >NBPDCL Consumption</TD>
					<TD ><asp:textbox id="txtKPTCL_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txtKPTCL_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD >
						<P><asp:textbox id="txtKPTCL_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator7" runat="server" ControlToValidate="txtKPTCL_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txtKPTCL_final" ErrorMessage="*"></asp:requiredfieldvalidator></P>
					</TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_kptcl" runat="server" Width="75" Height="16"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFkptcl" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD ><asp:label id="lblKPTCL_unit" runat="server" Width="159" Height="16"></asp:label></TD>
					<TD ><asp:label id="lblKPTCL_month" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD >02</TD>
					<TD >D.G. Energy Generated</TD>
					<TD ><asp:textbox id="txtDGGenI_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txtDGGenI_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtDGGenI_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator8" runat="server" ControlToValidate="txtDGGenI_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator19" runat="server" ControlToValidate="txtDGGenI_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_dgI" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFdgI" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD ><asp:label id="lblDGGenI_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDGGenI_month" runat="server" Width="75px"></asp:label></TD>
				</TR>
				<%--<TR>
					<TD >03</TD>
					<TD >D.G. Energy Gen II</TD>
					<TD ><asp:textbox id="txtDGGenII_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator24" runat="server" ControlToValidate="txtDGGenII_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtDGGenII_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="Rangevalidator25" runat="server" ControlToValidate="txtDGGenII_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="Requiredfieldvalidator25" runat="server" ControlToValidate="txtDGGenII_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:label id="lblDIFF_dgII" runat="server" Width="87px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFdgII" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD ><asp:label id="lblDGGenII_unit" runat="server" Width="150px"></asp:label></TD>
					<TD ><asp:label id="lblDGGenII_month" runat="server" Width="85px"></asp:label></TD>
				</TR>
				<TR>
					<TD >04</TD>
					<TD >D.G.Energy Gen III</TD>
					<TD ><asp:textbox id="txtDGGenIII_initial" runat="server" CssClass="form-control"></asp:textbox></TD>
					<TD ><asp:textbox id="txtDGGenIII_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
					<TD ><asp:label id="lblDIFF_dgIII" runat="server" Width="87px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFdgIII" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD ><asp:label id="lblDGGenIII_unit" runat="server" Width="150px"></asp:label></TD>
					<TD ><asp:label id="lblDGGenIII_month" runat="server" Width="85px"></asp:label></TD>
				</TR>--%>
				<TR>
					<TD >03</TD>
					<TD >ARC Furnace No. A</TD>
					<TD ><asp:textbox id="txtArc1_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" ControlToValidate="txtArc1_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtArc1_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator9" runat="server" ControlToValidate="txtArc1_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator18" runat="server" ControlToValidate="txtArc1_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_arc1" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFarcA" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblArc1_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblArc1_month" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD >04</TD>
					<TD >ARC Furnace No. B</TD>
					<TD ><asp:textbox id="txtArc2_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" ControlToValidate="txtArc2_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtArc2_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator10" runat="server" ControlToValidate="txtArc2_final" ErrorMessage="*" MinimumValue="0" MaximumValue="10000000" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator17" runat="server" ControlToValidate="txtArc2_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_arc2" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFarcB" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblArc2_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblArc2_month" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD >05</TD>
					<TD >ARC Furnace No. C</TD>
					<TD ><asp:textbox id="txtArc3_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" ControlToValidate="txtArc3_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtArc3_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator11" runat="server" ControlToValidate="txtArc3_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator16" runat="server" ControlToValidate="txtArc3_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_arc3" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFarcC" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblArc3_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblArc3_month" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD >06</TD>
					<TD >Pump House Sub-Station</TD>
					<TD ><asp:textbox id="txtPump_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" ControlToValidate="txtPump_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtPump_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator13" runat="server" ControlToValidate="txtPump_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator15" runat="server" ControlToValidate="txtPump_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_pump" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFpump" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblPump_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblPump_month" runat="server"></asp:label></TD>
				</TR>

                <TR>
					<TD >07</TD>
					<TD >Melt Sub-Station</TD>
					<TD ><asp:textbox id="MeltESS_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator24" runat="server" ControlToValidate="MeltESS_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="MeltESS_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator2" runat="server" ControlToValidate="MeltESS_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator25" runat="server" ControlToValidate="MeltESS_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_MeltESS" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMeltESS" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblMeltESS_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblMeltESS_month" runat="server"></asp:label></TD>
				</TR>

                 <TR>
					<TD >08</TD>
					<TD >Tube Pre-heat Sub-Station</TD>
					<TD ><asp:textbox id="TubePHESS_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator26" runat="server" ControlToValidate="TubePHESS_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="TubePHESS_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator3" runat="server" ControlToValidate="TubePHESS_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator27" runat="server" ControlToValidate="TubePHESS_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_TubePHESS" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlTubePHESS" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="TubePHESS_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="TubePHESS_month" runat="server"></asp:label></TD>
				</TR>

                <TR>
					<TD >09</TD>
					<TD >Mould Pre-heat Sub-Station</TD>
					<TD ><asp:textbox id="MouldPHESS_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator28" runat="server" ControlToValidate="MouldPHESS_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="MouldPHESS_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator4" runat="server" ControlToValidate="MouldPHESS_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator29" runat="server" ControlToValidate="MouldPHESS_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_MouldPHESS" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMouldPHESS" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="MouldPHESS_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="MouldPHESS_month" runat="server"></asp:label></TD>
				</TR>
                <TR>
					<TD >10</TD>
					<TD >Fume Sub-Station</TD>
					<TD ><asp:textbox id="FumePHESS_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" ControlToValidate="FumePHESS_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="FumePHESS_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator5" runat="server" ControlToValidate="FumePHESS_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator10" runat="server" ControlToValidate="FumePHESS_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_FumePHESS" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlFumePHESS" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="FumePHESS_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="FumePHESS_month" runat="server"></asp:label></TD>
				</TR>

                <TR>
					<TD >11</TD>
					<TD >Compressor Sub-Station</TD>
					<TD ><asp:textbox id="txtSubstation_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator30" runat="server" ControlToValidate="txtSubstation_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtSubstation_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator19" runat="server" ControlToValidate="txtSubstation_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator31" runat="server" ControlToValidate="txtSubstation_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD   colSpan="1" rowSpan="1"><asp:label id="lblDIFF_emms" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:dropdownlist id="ddlMFemms" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblSubstation_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD ><asp:label id="lblSubstation_month" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD >12</TD>
					<TD >Colony Sub-Station 1&2</TD>
					<TD ><asp:textbox id="txtColony12_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator11" runat="server" ControlToValidate="txtColony12_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtColony12_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator15" runat="server" ControlToValidate="txtColony12_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator14" runat="server" ControlToValidate="txtColony12_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_col12" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:dropdownlist id="ddlMFcol12" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblColony12_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblColony12_month" runat="server"></asp:label></TD>
				</TR>
                <TR>
					<TD >13</TD>
					<TD >Colony Sub-Station 3&4</TD>
					<TD ><asp:textbox id="txtColony34_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator12" runat="server" ControlToValidate="txtColony34_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtColony34_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator6" runat="server" ControlToValidate="txtColony34_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator13" runat="server" ControlToValidate="txtColony34_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_col34" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:dropdownlist id="ddlMFcol34" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblColony34_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblColony34_month" runat="server"></asp:label></TD>
				</TR>

				<TR>
					<TD >14</TD>
					<TD >Admn. Bldg.</TD>
					<TD ><asp:textbox id="txtAdmin_initial" runat="server" CssClass="form-control" ></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator20" runat="server" ControlToValidate="txtAdmin_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtAdmin_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:rangevalidator id="RangeValidator17" runat="server" ControlToValidate="txtAdmin_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator21" runat="server" ControlToValidate="txtAdmin_final" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_Admn" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:dropdownlist id="ddlMFadmn" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblAdmin_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblAdmin_month" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD >15</TD>
					<TD >Station Aux.</TD>
					<TD ><asp:textbox id="txtAux_initial" runat="server" CssClass="form-control" ></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator22" runat="server" ControlToValidate="txtAux_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtAux_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator23" runat="server" ControlToValidate="txtAux_final" ErrorMessage="*"></asp:requiredfieldvalidator><asp:rangevalidator id="Rangevalidator21" runat="server" ControlToValidate="txtAux_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator></TD>
					<TD colSpan="1" rowSpan="1"><asp:label id="lblDIFF_aux" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFaux" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblAux_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblAux_month" runat="server" Width="109px"></asp:label></TD>
				</TR>
				<TR>
					<TD  >16</TD>
					<TD >RWP generarion</TD>
					<TD ><asp:textbox id="txtrwfgen_initial" runat="server" CssClass="form-control"></asp:textbox></TD>
					<TD ><asp:textbox id="txtrwfgen_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
					<TD ><asp:label id="lblDIFF_rwfgen" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFrwfgen" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></TD>
					<TD ><asp:label id="lblRwfgen_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD ><asp:label id="lblRwfgen_month" runat="server" Width="121px"></asp:label></TD>
				</TR>
				<TR>
					<TD >17</TD>
					<TD >PCS</TD>
					<TD ><asp:textbox id="txtPCS_initial" runat="server" CssClass="form-control"></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator32" runat="server" ControlToValidate="txtPCS_initial" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					<TD ><asp:textbox id="txtPCS_final" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator33" runat="server" ControlToValidate="txtPCS_final" ErrorMessage="*"></asp:requiredfieldvalidator><asp:rangevalidator id="Rangevalidator23" runat="server" ControlToValidate="txtPCS_final" ErrorMessage="*" MinimumValue="0" MaximumValue="999999999999999" Type="Double"></asp:rangevalidator></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblDIFF_PCS" runat="server" Width="75px" Height="16px"></asp:label></TD>
					<TD ><asp:dropdownlist id="ddlMFPCS" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:dropdownlist></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblPCS_unit" runat="server" Width="159px" Height="16px"></asp:label></TD>
					<TD  colSpan="1" rowSpan="1"><asp:label id="lblPCS_month" runat="server" Width="121px"></asp:label></TD>
				</TR>
				
				<TR>
					<TD  colSpan="7" rowSpan="1"><asp:button id="btnSubmit_Clicks" runat="server" Font-Names="Arial" Font-Size="Smaller"  Text="Save" CssClass="button button2" BorderStyle="Groove"></asp:button><asp:button id="btnCancel" runat="server" Font-Names="Arial" Font-Size="Smaller"  Text="Clear" CssClass="button button2" BorderStyle="Groove"></asp:button><asp:button id="btnExit" runat="server" Font-Names="Arial" Font-Size="Smaller"  Text="Exit" CausesValidation="False" CssClass="button button2" BorderStyle="Groove"></asp:button></TD>
					<TD ></TD>
				</TR>
			</TABLE>
	</div>	</form></div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
