<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ShopWiseDailyEnergyConsumption.aspx.vb" Inherits="WebApplication2.ShopWiseDailyEnergyConsumption" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>Shopwise Daily Energy Consumption</title>
			
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

			<TABLE id="Table1" class="table">
				<TR>
					<TD  colSpan="4">MAIN 
							RECEIVING STATION</TD>
				</TR>
				<TR>
					<TD  colSpan="4">DAILY ENERGY 
						CONSUMPTION STATEMENT, SHOPWISE</TD>
				</TR>
				<TR>
					<TD  colSpan="4"><asp:label id="lblMode" runat="server" Width="101px" ForeColor="Blue" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller"></asp:label></TD>
				</TR>
				<TR>
					<TD  colSpan="4" rowSpan="1"><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
				</TR>
				<TR>
					<TD  colSpan="4" rowSpan="1">DATE :
						<asp:textbox id="txtDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="*"></asp:requiredfieldvalidator><asp:rangevalidator id="RangeValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="*" MinimumValue="1/1/1900" MaximumValue="1/1/9999" Type="Date"></asp:rangevalidator></TD>
				</TR>
				<TR>
					<TD>SL.NO.</TD>
					<TD>DESCRIPTION</TD>
					<TD>UNIT CONSUMPTION in KWh</TD>
					<TD>REMARKS</TD>
				</TR>
				<TR>
					<TD>1.</TD>
					<TD>NBPDCL Consumption</TD>
                    <%--<span style="color: rgb(0, 0, 0); font-family: docs-Calibri; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">N. B. P. D. C. L </span>. Consumption</TD>--%>
					<TD><asp:label id="lblKPTCL" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtKPTCL" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>2.</TD>
					<TD>D.G. Energy Generated</TD>
					<TD><asp:label id="lblGenerated" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtGenerated" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>3.</TD>
					<TD>ARC Furnace No. I</TD>
					<TD><asp:label id="lblArc1" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtArc1" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>4.</TD>
					<TD>ARC Furnace No. II</TD>
					<TD><asp:label id="lblArc2" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtArc2" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>5.</TD>
					<TD>ARC Furnace No. III</TD>
					<TD><asp:label id="lblArc3" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtArc3" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>6.</TD>
					<TD>Pump House Sub-Station</TD>
					<TD><asp:label id="lblPump" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtPump" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>7.</TD>
					<TD>&nbsp;MELT Sub Station</TD>
					<TD><asp:label id="lblWheelEssential" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtWheelEssential" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
                <%--<TR>
					<TD>8.</TD>
					<TD>Wheel Shop Sub-Station (Non-essential)</TD>
					<TD><asp:label id="lblWheelNonEssential" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtWheelNonEssential" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>--%>
				<TR>
					<TD>8.</TD>
					<TD>Tube Pre-heat Sub-Station</TD>
					<TD><asp:label id="lblTube" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtTube" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>9.</TD>
					<TD>Mould Pre-heat Sub-Station</TD>
					<TD><asp:label id="lblMould" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtMould" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>10.</TD>
					<TD>Fume Sub-Station</TD>
					<TD><asp:label id="lblFume" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtFume" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>11.</TD>
					<TD>Compressor Sub-Station</TD>
					<TD><asp:label id="lblCompressor" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtCompressor" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<%--<TR>
					<TD>13.</TD>
					<TD>Assembly Shop Sub-Station</TD>
					<TD><asp:label id="lblAssembly" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtAssembly" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>14.</TD>
					<TD>Axle Shop Sub-Station (Essential)</TD>
					<TD><asp:label id="lblAxelEssential" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtAxelEssential" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>15.</TD>
					<TD>Axle Shop Sub-Station (Non-essential)</TD>
					<TD><asp:label id="lblAxelNonEssential" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtAxelNonEssential" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>16.</TD>
					<TD>G.F.M. Sub-Station</TD>
					<TD><asp:label id="lblGFM" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtGFM" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>17.</TD>
					<TD>Canteen Sub-Station</TD>
					<TD><asp:label id="lblCanteen" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtCanteen" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				--%><TR>
					<TD>12.</TD>
					<TD>Colony Sub Station (1&2)</TD>
					<TD><asp:label id="lblColony" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtColony" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
                <TR>
					<TD>13.</TD>
					<TD>Colony Sub Station (3&4)</TD>
					<TD><asp:label id="lblColony1" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtColony1" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>14.</TD>
					<TD>Admn. Bldg.ddd</TD>
					<TD><asp:label id="lblAdmin" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtAdmin" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>15.</TD>
					<TD>Station Aux.</TD>
					<TD><asp:label id="lblAux" runat="server" Width="85px"></asp:label></TD>
					<TD><asp:textbox id="txtAux" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<%--<TR>
					<TD >21.</TD>
					<TD >E.M.M.S. Sub-Station</TD>
					<TD ><asp:label id="lblEmms" runat="server" Width="85px"></asp:label></TD>
					<TD ><asp:textbox id="txtEmms" runat="server" CssClass="form-control" ></asp:textbox></TD>
				</TR>
				<TR>
					<TD >22.</TD>
					<TD >DCOS</TD>
					<TD ><asp:label id="lblDCOS" runat="server" Width="85px"></asp:label></TD>
					<TD ><asp:textbox id="txtDcos" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				<TR>
					<TD >23.</TD>
					<TD >Liquid Oxygen Plant</TD>
					<TD >
						<asp:label id="lblLop" runat="server" Width="85px"></asp:label></TD>
					<TD >
						<asp:textbox id="txtLop" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
				--%><TR>
					<TD >16.</TD>
					<TD >RWP Generation</TD>
					<TD >
						<asp:label id="lblRwfgen" runat="server" Width="85px"></asp:label></TD>
					<TD >
						<asp:textbox id="txtRwfgen" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
                <TR>
					<TD >17.</TD>
					<TD >PCS</TD>
					<TD >
						<asp:label id="lblPCS" runat="server" Width="85px"></asp:label></TD>
					<TD >
						<asp:textbox id="txtPCS" runat="server" CssClass="form-control"></asp:textbox></TD>
				</TR>
                <%--<TR>
					<TD >25.</TD>
					<TD >Check Meter</TD>
					<TD >
						<asp:label id="lblCheckMeter" runat="server" Width="85px"></asp:label></TD>
					<TD >
						<asp:TextBox id="txtCheckMeter" runat="server" CssClass="form-control"></asp:TextBox></TD>
				</TR>--%>
				</TABLE>
						<TABLE id="Table5" class="table">
							<TR>
								<TD >Code</TD>
								<TD >AF-A</TD>
								<TD >AF-B</TD>
								<TD >AF-C</TD>
							</TR>
							<TR>
								<TD >a</TD>
								<TD >
									<asp:label id="lblAF_Aa" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblAF_Ba" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblAF_Ca" runat="server"></asp:label></TD>
							</TR>
							<TR>
								<TD >b</TD>
								<TD >
									<asp:label id="lblAF_Ab" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblAF_Bb" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblAF_Cb" runat="server"></asp:label></TD>
							</TR>
							<TR>
								<TD >c</TD>
								<TD ">
									<asp:label id="lblAF_Ac" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblAF_Bc" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblAF_Cc" runat="server"></asp:label></TD>
							</TR>
							<TR>
								<TD >d</TD>
								<TD >
									<asp:label id="lblAF_Ad" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblAF_Bd" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblAF_Cd" runat="server"></asp:label></TD>
							</TR>
							<TR>
								<TD >e</TD>
								<TD >
									<asp:label id="lblAF_Ae" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblAF_Be" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblAF_Ce" runat="server"></asp:label></TD>
							</TR>
							<TR>
								<TD >Total</TD>
								<TD >
									<asp:label id="lblTotalAF_A" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblTotalAF_B" runat="server"></asp:label></TD>
								<TD >
									<asp:label id="lblTotalAF_C" runat="server"></asp:label></TD>
							</TR>
							<TR>
								<TD  colSpan="2">Total Tonnage</TD>
								<TD >
									<asp:label id="lblTotalTonnageforDay" runat="server"></asp:label></TD>
								<TD ></TD>
							</TR>

                            <TR>
					<TD  colSpan="4"><asp:button id="btnSubmit_Clicks" runat="server"  Font-Names="Arial" Font-Size="Smaller" CssClass="button button2" BorderStyle="Groove" Text="Save"></asp:button><asp:button id="btnCancel" runat="server"  Font-Names="Arial" Font-Size="Smaller" CssClass="button button2" BorderStyle="Groove" Text="Clear"></asp:button><asp:button id="btnExit" runat="server" CssClass="button button2" Font-Names="Arial" Font-Size="Smaller"  BorderStyle="Groove" Text="Exit" CausesValidation="False"></asp:button></TD>
				</TR>

						</TABLE>
				
		
		</div></form>
            </div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
