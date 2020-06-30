<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BHNPostResultAdd.aspx.vb" Inherits="WebApplication2.BHNPostResultAdd" smartNavigation="False" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>BHNPostResultAdd</title>
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
     <link rel="stylesheet" href="../../../../StyleSheet1.css" />
	</HEAD>
	<body >
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
		<form id="Form1" method="post" runat="server">
            <div class="row"><div class="table-responsive">
			
									<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="608" border="1">
										<TR>
											<TD vAlign="top" noWrap align="middle" colSpan="4" rowSpan="1"><STRONG><FONT size="4">Wheel 
														Mechanical and Metallographic properties&nbsp;&nbsp;&nbsp;&nbsp;
														<asp:label id="lblMode" runat="server" ForeColor="Blue"></asp:label></FONT></STRONG><hr class="prettyline" />
										</TR></TABLE>
										
												<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label>
												<TABLE id="Table12" class="table">
													<TR>
														<TD>WheelNumber</TD>
														<TD>
															<asp:dropdownlist id="ddlLabNumber" tabIndex="1" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></TD>
														<TD>LabNumber</TD>
														<TD>
															<asp:label id="lblLabNumber" runat="server"></asp:label></TD>
													</TR>
												</TABLE>
												
                                                <TABLE id="Table3" class="table">

													<TR>
														<TD >ClosureInmm</TD>
														<TD >
															<asp:label id="lblClosure" runat="server" Height="3px"></asp:label>
															<asp:label id="ini" runat="server" Visible="False"></asp:label>
															<asp:label id="fin" runat="server" Visible="False"></asp:label></TD>
														<TD >NatureOfClosure
														</TD>
														<TD colSpan="2"><asp:radiobuttonlist id="radClosure" runat="server" Width="275px" Enabled="False" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl">
																<asp:ListItem Value="Open" Selected="True">Open</asp:ListItem>
																<asp:ListItem Value="Closed">Closed</asp:ListItem>
																<asp:ListItem Value="Not Done">Not Done</asp:ListItem>
																<asp:ListItem Value="Skip">Skip</asp:ListItem>
															</asp:radiobuttonlist></TD>
													</TR>
													<TR>
														<TD >&nbsp;</TD>
														<TD >RIM</TD>
														<TD >PLATE</TD>
														<TD  colSpan="1" rowSpan="1">CharpyUnotch</TD>
														<TD  colSpan="1" rowSpan="1">
															KUInJoulesRIM</TD>
													</TR>
													<TR>
														<TD >
															UTS(N/mm<SUP>2</SUP>)</TD>
														<TD ><asp:textbox id="txtUTS_rim" tabIndex="2" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
														<TD><asp:textbox id="txtUTS_plate" tabIndex="6" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
														<TD ><FONT size="4"><STRONG>&nbsp;a</STRONG></FONT></TD>
														<TD colSpan="1" rowSpan="1"><asp:textbox id="txtJoules_a" tabIndex="10" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
													</TR>
													<TR>
														<TD >YS (N/mm<SUP>2</SUP>)</TD>
														<TD><asp:textbox id="txtYS_rim" tabIndex="3" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
														<TD ><asp:textbox id="txtYS_plate" tabIndex="7" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
														<TD >&nbsp;<FONT size="4"><STRONG>b</STRONG></FONT></TD>
														<TD colSpan="1" rowSpan="1"><asp:textbox id="txtJoules_b" tabIndex="11" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
													</TR>
													<TR>
														<TD >
															Elongation%</TD>
														<TD ><asp:textbox id="txtKlengation_rim" tabIndex="4" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
														<TD ><asp:textbox id="txtKlengation_plate" tabIndex="8" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
														<TD colSpan="1" rowSpan="1">&nbsp;<FONT size="4"><STRONG>c</STRONG></FONT></TD>
														<TD colSpan="1" rowSpan="1"><asp:textbox id="txtJoules_c" tabIndex="12" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
													</TR>
													<TR>
														<TD>
															RednInArea%</TD>
														<TD ><asp:textbox id="txtRedn_rim" tabIndex="5" runat="server" AutoPostBack="True" Width="80px"></asp:textbox></TD>
														<TD><asp:textbox id="txtRDedn_plate" tabIndex="9" runat="server" Width="80px"></asp:textbox></TD>
														<TD colSpan="1" rowSpan="1">&nbsp;
															<asp:label id="lblAvg" runat="server"></asp:label></TD>
														<TD colSpan="1" rowSpan="1"><asp:label id="lblJoules" runat="server" ForeColor="Red"></asp:label></TD>
													</TR>
												</TABLE>

												<TABLE id="Table11" class="table">
													<TR>
														<TD>Inclusion</TD>
														<TD>Thin</TD>
														<TD><STRONG>Thick</STRONG></TD>
													</TR>
													<TR>
														<TD align="middle">A</TD>
														<TD>
															<asp:radiobuttonlist id="rblAThin" tabIndex="13" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
																<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
																<asp:ListItem Value="0.5">0.5</asp:ListItem>
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="1.5">1.5</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="2.5">2.5</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
															</asp:radiobuttonlist></TD>
														<TD>
															<asp:radiobuttonlist id="rblAThick" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
																<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
																<asp:ListItem Value="0.5">0.5</asp:ListItem>
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="1.5">1.5</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="2.5">2.5</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
															</asp:radiobuttonlist></TD>
													</TR>
													<TR>
														<TD align="middle">B</TD>
														<TD><asp:radiobuttonlist id="rblBThin" runat="server"  RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl">
																<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
																<asp:ListItem Value="0.5">0.5</asp:ListItem>
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="1.5">1.5</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="2.5">2.5</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
															</asp:radiobuttonlist></TD>
														<TD><asp:radiobuttonlist id="rblBThick" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal">
																<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
																<asp:ListItem Value="0.5">0.5</asp:ListItem>
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="1.5">1.5</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="2.5">2.5</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
															</asp:radiobuttonlist></TD>
													</TR>
													<TR>
														<TD align="middle">C</TD>
														<TD>
															<asp:radiobuttonlist id="rblCThin" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
																<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
																<asp:ListItem Value="0.5">0.5</asp:ListItem>
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="1.5">1.5</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="2.5">2.5</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
															</asp:radiobuttonlist></TD>
														<TD>
															<asp:radiobuttonlist id="rblCThick" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
																<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
																<asp:ListItem Value="0.5">0.5</asp:ListItem>
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="1.5">1.5</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="2.5">2.5</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
															</asp:radiobuttonlist></TD>
													</TR>
													<TR>
														<TD align="middle">D</TD>
														<TD><asp:radiobuttonlist id="rblDThin" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal">
																<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
																<asp:ListItem Value="0.5">0.5</asp:ListItem>
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="1.5">1.5</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="2.5">2.5</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
															</asp:radiobuttonlist></TD>
														<TD>
															<asp:radiobuttonlist id="rblDThick" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
																<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
																<asp:ListItem Value="0.5">0.5</asp:ListItem>
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="1.5">1.5</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="2.5">2.5</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
															</asp:radiobuttonlist></TD>
													</TR>
												</TABLE>
												<TABLE id="Table4" class="table">
													<TR>
														<TD  noWrap colSpan="1" rowSpan="1">MicroStructure</TD>
														<TD  colSpan="3">
															<asp:radiobuttonlist id="rblStructure" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
																<asp:ListItem Value="Uniform Fine Pearlitic" Selected="True">Uniform Fine Pearlitic</asp:ListItem>
																<asp:ListItem Value="Uniform Pearlitic">Uniform Pearlitic</asp:ListItem>
																<asp:ListItem Value="Anything">Anything</asp:ListItem>
															</asp:radiobuttonlist></TD>
													</TR>
													<TR>
														<TD  noWrap width="101">Grain Size No.</TD>
														<TD colSpan="3">
															<asp:checkboxlist id="chkGrain" runat="server" Height="5px" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
																<asp:ListItem Value="4">4</asp:ListItem>
																<asp:ListItem Value="5">5</asp:ListItem>
																<asp:ListItem Value="6">6</asp:ListItem>
																<asp:ListItem Value="7">7</asp:ListItem>
																<asp:ListItem Value="8">8</asp:ListItem>
															</asp:checkboxlist></TD>
													</TR>
													<TR>
														<TD >Macro</TD>
														<TD  colSpan="3">
															<asp:radiobuttonlist id="rblMacro" runat="server" Height="11px" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
																<asp:ListItem Value="Satisfactory" Selected="True">Satisfactory</asp:ListItem>
																<asp:ListItem Value="Not Satisfactory">Not Satisfactory</asp:ListItem>
																<asp:ListItem Value="Not Done">Not Done</asp:ListItem>
															</asp:radiobuttonlist></TD>
													</TR>
													<TR>
														<TD >Test Results</TD>
														<TD colSpan="3">
															<asp:radiobuttonlist id="rblResult" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
																<asp:ListItem Value="P" Selected="True">Pass</asp:ListItem>
																<asp:ListItem Value="R">Reject</asp:ListItem>
															</asp:radiobuttonlist></TD>
													</TR>
													<TR>
														<TD >Remarks</TD>
														<TD >colSpan="3">
															<asp:textbox id="txtRemarks" runat="server" CssClass="form-control"></asp:textbox></TD>
													</TR>
												</TABLE>
												<asp:button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:button>
									
								
									<TABLE id="Table8" class="table"></TABLE>
										
												<asp:radiobuttonlist id="rblLabValues" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
													<asp:ListItem Value="Wheel Details">Wheel Details</asp:ListItem>
													<asp:ListItem Value="Chemical">Chemical</asp:ListItem>
													<asp:ListItem Value="BHN Values">BHN Values</asp:ListItem>
													<asp:ListItem Value="Spec">Spec</asp:ListItem>
													<asp:ListItem Value="HT Details">HT Details</asp:ListItem>
												</asp:radiobuttonlist>
												<asp:panel id="Panel1" runat="server" >
													<TABLE id="Table5" class="table" >
														<TR>
															<TD>WheelNumber</TD>
															<TD>
																<asp:label id="lblWheel" runat="server" Width="80px"></asp:label></TD>
															<TD>Cast date</TD>
															<TD>
																<asp:label id="lblCastdate" runat="server"></asp:label></TD>
														</TR>
														<TR>
															<TD >Received Date</TD>
															<TD >
																<asp:label id="lblReceiveddate" runat="server"></asp:label></TD>
															<TD\>Wheel Class</TD>
															<TD >
																<asp:label id="lblWheelClass" runat="server"></asp:label></TD>
														</TR>
														<TR>
															<TD>Heat Range</TD>
															<TD>
																<asp:label id="lblHeatrange" runat="server"></asp:label></TD>
															<TD>Test Type</TD>
															<TD>
																<asp:label id="lblTestType" runat="server"></asp:label></TD>
														</TR>
														<TR>
															<TD>Wheel Type</TD>
															<TD>
																<asp:label id="lblWheeltype" runat="server"></asp:label></TD>
															<TD>Pour Order</TD>
															<TD>
																<asp:label id="lblPourorder" runat="server"></asp:label></TD>
														</TR>
														<TR>
															<TD>Cope Life</TD>
															<TD>
																<asp:label id="lblCopelife" runat="server"></asp:label></TD>
															<TD>Drag Life</TD>
															<TD>
																<asp:label id="lblDraglife" runat="server"></asp:label></TD>
														</TR>
														<TR>
															<TD>Tube in Temp</TD>
															<TD>
																<asp:label id="lblTubetemp" runat="server"></asp:label></TD>
															<TD>Final Temperature</TD>
															<TD>
																<asp:label id="lblFinaltemp" runat="server"></asp:label></TD>
														</TR>
													</TABLE>
												</asp:panel>
												<asp:panel id="Panel2" runat="server" >
													<TABLE id="Table7" class="table">
														<TR>
															<TD >Carbon</TD>
															<TD>
																<asp:textbox id="txtC" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
															<TD >Manganese</TD>
															<TD>
																<asp:textbox id="txtMn" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
														</TR>
														<TR>
															<TD >Silicon</TD>
															<TD >
																<asp:textbox id="txtSi" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
															<TD >Phosphorus</TD>
															<TD>
																<asp:textbox id="txtP" runat="server" AutoPostBack="True" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
														</TR>
														<TR>
															<TD >Sulphur</TD>
															<TD >
																<asp:textbox id="txtS" runat="server" AutoPostBack="True" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
															<TD >Chromium</TD>
															<TD>
																<asp:textbox id="txtCr" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
														</TR>
														<TR>
															<TD >Nickel</TD>
															<TD >
																<asp:textbox id="txtNi" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
															<TD >Copper</TD>
															<TD>
																<asp:textbox id="txtCu" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
														</TR>
														<TR>
															<TD >Molybdenum</TD>
															<TD >
																<asp:textbox id="txtMo" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
															<TD>Vanadium</TD>
															<TD>
																<asp:textbox id="txtV" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
														</TR>
														<TR>
															<TD >Phosphorus+Sulphur</TD>
															<TD >
																<asp:textbox id="txtP_S" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
															<TD >Alunimum</TD>
															<TD>
																<asp:textbox id="txtAl" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>%</TD>
														</TR>
														<TR>
															<TD >Nitrogen</TD>
															<TD>
																<asp:textbox id="txtN" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>ppm</TD>
															<TD >Hydrogen</TD>
															<TD>
																<asp:textbox id="txtH" runat="server" Enabled="False" CssClass="form-control">0.0</asp:textbox>ppm</TD>
														</TR>
													</TABLE>
												</asp:panel>
												<asp:panel id="Panel3"  runat="server">
													<uc1:BHNViewHardnessValues id="BHNViewHardnessValues1" ></uc1:BHNViewHardnessValues>
												</asp:panel>
												<asp:panel id="Panel4" runat="server">
													<TABLE id="Table9" class="table"></TABLE>
														
																<TABLE id="Table10" class="table">
																	<TR>
																		<TD>Charge-in-Date:</TD>
																		<TD >
																			<asp:textbox id="txtNFChargeDate" runat="server" Enabled="False" CssClass="form-control"></asp:textbox></TD>
																		<TD>Time (&nbsp;hh:mm&nbsp;):</TD>
																		<TD>
																			<asp:textbox id="txtNFChargeTime" runat="server" Enabled="False" CssClass="form-control"></asp:textbox></TD>
																		<TD style="WIDTH: 17px">Wheel Charge condition:</TD>
																		<TD>
																			<asp:dropdownlist id="ddlNFChargeCondition" runat="server" Enabled="False" CssClass="form-control ll">
																				<asp:ListItem Value="Hot" Selected="True">Hot</asp:ListItem>
																				<asp:ListItem Value="Cold">Cold</asp:ListItem>
																			</asp:dropdownlist></TD>
																		<TD colSpan="2">Wheel Discharge Time:(hh:mm)</TD>
																		<TD>
																			<asp:textbox id="txtNFDischargeTime" runat="server" Enabled="False" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
																	</TR>
																	<TR>
																		<TD>Quencher No:</TD>
																		<TD style="WIDTH: 109px">
																			<asp:dropdownlist id="ddlQuencherNo" runat="server" Enabled="False" CssClass="form-control ll"></asp:dropdownlist></TD>
																		<TD>Duration:</TD>
																		<TD>
																			<asp:textbox id="txtQTimeMin" runat="server" Enabled="False" CssClass="form-control" MaxLength="1"></asp:textbox>min</TD>
																		<TD style="WIDTH: 17px">
																			<asp:textbox id="txtQTimeSec" runat="server" Enabled="False" CssClass="form-control"></asp:textbox>sec</TD>
																		<TD></TD>
																		<TD></TD>
																		<TD></TD>
																		<TD></TD>
																	</TR>
																	<TR>
																		<TD >Zone Number:</TD>
																		<TD >Zone 1</TD>
																		<TD >Zone 2</TD>
																		<TD>Zone 3</TD>
																		<TD >Zone 4</TD>
																		<TD >Zone 5</TD>
																		<TD>Zone 6</TD>
																		<TD >Zone 7</TD>
																		<TD >Zone 8</TD>
																	</TR>
																	<TR>
																		<TD>Temperature of NF (close to discharge time )</TD>
																		<TD >
																			<asp:textbox id="txtNFZone1" tabIndex="-1" runat="server" Enabled="False" CssClass="form-control" MaxLength="3">0</asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtNFZone2" runat="server" Enabled="False" CssClass="form-control" MaxLength="4"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtNFZone3" runat="server" Enabled="False" CssClass="form-control" MaxLength="4"></asp:textbox></TD>
																		<TD >
																			<asp:textbox id="txtNFZone4" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtNFZone5" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtNFZone6" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtNFZone7" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD></TD>
																	</TR>
																	<TR>
																		<TD>Temperature of DF (close to discharge time )</TD>
																		<TD >
																			<asp:textbox id="txtDFZone1" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtDFZone2" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtDFZone3" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD >
																			<asp:textbox id="txtDFZone4" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtDFZone5" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtDFZone6" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtDFZone7" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtDFZone8" runat="server" Enabled="False" CssClass="form-control" MaxLength="3"></asp:textbox></TD>
																	</TR>
																	<TR>
																		<TD>Hub Cooler</TD>
																		<TD >
																			<asp:dropdownlist id="ddlHubCooler1" runat="server" Enabled="False" CssClass="form-control ll"></asp:dropdownlist></TD>
																		<TD>
																			<asp:dropdownlist id="ddlHubCooler2" runat="server" Enabled="False" CssClass="form-control ll"></asp:dropdownlist></TD>
																		<TD>
																			<asp:dropdownlist id="ddlHubCooler3" runat="server" Enabled="False" CssClass="form-control ll"></asp:dropdownlist></TD>
																		<TD ></TD>
																		<TD></TD>
																		<TD></TD>
																		<TD></TD>
																		<TD></TD>
																	</TR>
																	<TR>
																		<TD>Duration ( in sec )</TD>
																		<TD >
																			<asp:textbox id="txtHC1" runat="server" Enabled="False" CssClass="form-control" MaxLength="2"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtHC2" runat="server" Enabled="False" CssClass="form-control" MaxLength="2"></asp:textbox></TD>
																		<TD>
																			<asp:textbox id="txtHC3" runat="server" Enabled="False" CssClass="form-control" MaxLength="2"></asp:textbox></TD>
																		<TD ></TD>
																		<TD></TD>
																		<TD></TD>
																		<TD></TD>
																		<TD></TD>
																	</TR>
																</TABLE>
															
													
												</asp:panel>
									
									<asp:panel id="pnlImage" runat="server" Width="117px">
										<asp:Panel id="pnlA" runat="server" Width="24px">
											<asp:Image id="ImageA" runat="server" ImageUrl="../../NewFolder1/imgClassA.jpg"></asp:Image>
										</asp:Panel>
										<asp:Panel id="pnlB" runat="server" Width="51px">
											<asp:Image id="Image1" runat="server" Height="568px" Width="600px" ImageUrl="../../NewFolder1/imgClassB.jpg"></asp:Image>
										</asp:Panel>
										<asp:Panel id="pnlSpl" runat="server">
											<asp:Image id="ImageSpl" runat="server" ImageUrl="../../NewFolder1/imgClassSpl.jpg"></asp:Image>
										</asp:Panel>
									</asp:panel>

                </div></div>
		</form>
            </div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
