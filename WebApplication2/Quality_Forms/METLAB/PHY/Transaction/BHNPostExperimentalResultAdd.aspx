<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BHNPostExperimentalResultAdd.aspx.vb" Inherits="WebApplication2.BHNPostExperimentalResultAdd" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>BHNPostExperimentalResultAdd</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">

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
			<TABLE id="Table2" class="table"></TABLE>
				
						<TABLE id="Table6" class="table"></TABLE>
							
									<TABLE id="Table1" class="table">
										<TR>
											<TD vAlign="top" noWrap align="middle" colSpan="4" rowSpan="1"><STRONG><FONT size="4">Wheel 
														Mechanical and Metallographic properties - Experimental Wheels</FONT></STRONG><hr class="prettyline" /></TD>
										</TR>
										<TR>
											<TD colSpan="3"><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label>&nbsp;</TD>
											<TD><asp:label id="lblMode" runat="server" ForeColor="Blue"></asp:label>&nbsp;</TD>
										</TR>
										<TR>
											<TD>Wheel Number</TD>
											<TD><asp:dropdownlist id="ddlLabNumber" tabIndex="1" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></TD>
											<TD>Lab Number</TD>
											<TD><asp:label id="lblLabNumber" runat="server"></asp:label>&nbsp;</TD>
										</TR>
										<TR>
											<TD>Closure in mm</TD>
											<TD>
												<asp:label id="lblClosure" runat="server" Height="3px"></asp:label>
												<asp:label id="ini" runat="server" Visible="False"></asp:label>
												<asp:label id="fin" runat="server" Visible="False"></asp:label></TD>
											<TD>Nature of closure
											</TD>
											<TD>
												<asp:radiobuttonlist id="radClosure" runat="server" CssClass="rbl" Enabled="False" RepeatLayout="Flow" RepeatDirection="Horizontal">
													<asp:ListItem Value="Open" Selected="True">Open</asp:ListItem>
													<asp:ListItem Value="Closed">Closed</asp:ListItem>
													<asp:ListItem Value="Not Done">Not Done</asp:ListItem>
													<asp:ListItem Value="Skip">Skip</asp:ListItem>
												</asp:radiobuttonlist></TD>
										</TR>
									</TABLE>
									<TABLE id="Table4" class="table">
										<TR>
											<TD >&nbsp;Inclusion&nbsp;</TD>
											<TD >&nbsp;Thin</TD>
											<TD></TD>
											<TD><STRONG>Thick</STRONG></TD>
										</TR>
										<TR>
											<TD  align="middle" >A</TD>
											<TD >
												<asp:radiobuttonlist id="rblAThin" tabIndex="13" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
													<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
													<asp:ListItem Value="0.5">0.5</asp:ListItem>
													<asp:ListItem Value="1">1</asp:ListItem>
													<asp:ListItem Value="1.5">1.5</asp:ListItem>
													<asp:ListItem Value="2">2</asp:ListItem>
													<asp:ListItem Value="2.5">2.5</asp:ListItem>
													<asp:ListItem Value="3">3</asp:ListItem>
												</asp:radiobuttonlist></TD>
											<TD></TD>
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
											<TD  align="middle" >B</TD>
											<TD >
												<asp:radiobuttonlist id="rblBThin" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
													<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
													<asp:ListItem Value="0.5">0.5</asp:ListItem>
													<asp:ListItem Value="1">1</asp:ListItem>
													<asp:ListItem Value="1.5">1.5</asp:ListItem>
													<asp:ListItem Value="2">2</asp:ListItem>
													<asp:ListItem Value="2.5">2.5</asp:ListItem>
													<asp:ListItem Value="3">3</asp:ListItem>
												</asp:radiobuttonlist></TD>
											<TD></TD>
											<TD>
												<asp:radiobuttonlist id="rblBThick" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
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
											<TD  align="middle" >C</TD>
											<TD >
												<asp:radiobuttonlist id="rblCThin" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
													<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
													<asp:ListItem Value="0.5">0.5</asp:ListItem>
													<asp:ListItem Value="1">1</asp:ListItem>
													<asp:ListItem Value="1.5">1.5</asp:ListItem>
													<asp:ListItem Value="2">2</asp:ListItem>
													<asp:ListItem Value="2.5">2.5</asp:ListItem>
													<asp:ListItem Value="3">3</asp:ListItem>
												</asp:radiobuttonlist></TD>
											<TD></TD>
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
											<TD  align="middle" >D</TD>
											<TD >
												<asp:radiobuttonlist id="rblDThin" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
													<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
													<asp:ListItem Value="0.5">0.5</asp:ListItem>
													<asp:ListItem Value="1">1</asp:ListItem>
													<asp:ListItem Value="1.5">1.5</asp:ListItem>
													<asp:ListItem Value="2">2</asp:ListItem>
													<asp:ListItem Value="2.5">2.5</asp:ListItem>
													<asp:ListItem Value="3">3</asp:ListItem>
												</asp:radiobuttonlist></TD>
											<TD></TD>
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
										<TR>
											<TD noWrap colSpan="1" rowSpan="1">Micro 
												Structure</TD>
											<TD colSpan="3">
												<asp:radiobuttonlist id="rblStructure" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
													<asp:ListItem Value="Uniform Fine Pearlitic" Selected="True">Uniform Fine Pearlitic</asp:ListItem>
													<asp:ListItem Value="Uniform Pearlitic">Uniform Pearlitic</asp:ListItem>
													<asp:ListItem Value="Anything">Anything</asp:ListItem>
												</asp:radiobuttonlist></TD>
										</TR>
										<TR>
											<TD  noWrap >Grain Size No.</TD>
											<TD  colSpan="3">
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
											<TD>Test Results</TD>
											<TD  colSpan="3">
												<asp:radiobuttonlist id="rblResult" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
													<asp:ListItem Value="P" Selected="True">Pass</asp:ListItem>
													<asp:ListItem Value="R">Reject</asp:ListItem>
												</asp:radiobuttonlist></TD>
										</TR>
										<TR>
											<TD >Remarks</TD>
											<TD  colSpan="3">
												<asp:textbox id="txtRemarks" runat="server" CssClass="form-control"></asp:textbox></TD>
										</TR>
									</TABLE>
									<asp:button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:button>
								
									<TABLE id="Table5" class="table">
										<TR>
											<TD>WheelNumber</TD>
											<TD>
												<asp:label id="lblWheel" runat="server" ></asp:label>&nbsp;</TD>
											<TD>Cast date</TD>
											<TD>
												<asp:label id="lblCastdate" runat="server"></asp:label>&nbsp;</TD>
										</TR>
										<TR>
											<TD >Received Date</TD>
											<TD >
												<asp:label id="lblReceiveddate" runat="server"></asp:label>&nbsp;</TD>
											<TD >Wheel Class</TD>
											<TD >
												<asp:label id="lblWheelClass" runat="server"></asp:label>&nbsp;</TD>
										</TR>
										<TR>
											<TD>Heat Range</TD>
											<TD>
												<asp:label id="lblHeatrange" runat="server"></asp:label>&nbsp;</TD>
											<TD>Test Type</TD>
											<TD>
												<asp:label id="lblTestType" runat="server"></asp:label>&nbsp;</TD>
										</TR>
										<TR>
											<TD>Wheel Type</TD>
											<TD>
												<asp:label id="lblWheeltype" runat="server"></asp:label>&nbsp;</TD>
											<TD>Pour Order</TD>
											<TD>
												<asp:label id="lblPourorder" runat="server"></asp:label>&nbsp;</TD>
										</TR>
										<TR>
											<TD>Cope Life</TD>
											<TD>
												<asp:label id="lblCopelife" runat="server"></asp:label>&nbsp;</TD>
											<TD>Drag Life</TD>
											<TD>
												<asp:label id="lblDraglife" runat="server"></asp:label>&nbsp;</TD>
										</TR>
										<TR>
											<TD>Tube in Temp</TD>
											<TD>
												<asp:label id="lblTubetemp" runat="server"></asp:label>&nbsp;</TD>
											<TD>Final Temperature</TD>
											<TD>
												<asp:label id="lblFinaltemp" runat="server"></asp:label>&nbsp;</TD>
										</TR>
									</TABLE>
						
			</div></div>
		</form>

            </div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
