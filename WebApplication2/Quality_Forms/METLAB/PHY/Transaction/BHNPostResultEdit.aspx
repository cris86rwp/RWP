<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BHNPostResultEdit.aspx.vb" Inherits="WebApplication2.BHNPostResultEdit" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>BHNPostResultEdit</title>
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
			<TABLE id="Table2" class="table"></TABLE>
				
						<TABLE id="Table1" class="table">
							<TR>
								<TD vAlign="top" noWrap align="middle" colSpan="4" rowSpan="1"><STRONG><FONT size="4">Wheel 
											Mechanical and Metallographic properties - Edit</FONT></STRONG><hr class="prettyline" /></TD>
							</TR>
							<TR>
								<TD colSpan="3"><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label>&nbsp;</TD>
								<TD><asp:label id="lblMode" runat="server" ForeColor="Blue"></asp:label>&nbsp;</TD>
							</TR>
							<TR>
								<TD>Wheel Number</TD>
								<TD><asp:textbox id="txtWheelNumber" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
								<TD>Lab Number</TD>
								<TD><asp:label id="lblLabNumber" runat="server"></asp:label>&nbsp;</TD>
							</TR></TABLE>
							
									<TABLE id="Table3" class="table">
										<TR>
											<TD >Closure in mm</TD>
											<TD ><asp:label id="lblClosure" runat="server" Height="3px"></asp:label><asp:label id="ini" runat="server" Visible="False"></asp:label><asp:label id="fin" runat="server" Visible="False"></asp:label></TD>
											<TD >Nature of closure
											</TD>
											<TD >
												<asp:radiobuttonlist id="radClosure" runat="server" CssClass="rbl" Enabled="False" RepeatLayout="Flow" RepeatDirection="Horizontal">
													<asp:ListItem Value="Open" Selected="True">Open</asp:ListItem>
													<asp:ListItem Value="Closed">Closed</asp:ListItem>
													<asp:ListItem Value="Not Done">Not Done</asp:ListItem>
													<asp:ListItem Value="Skip">Skip</asp:ListItem>
												</asp:radiobuttonlist></TD>
										</TR>
										<TR>
											<TD >&nbsp;</TD>
											<TD >RIM</TD>
											<TD>PLATE</TD>
											<TD  colSpan="1" rowSpan="1">CharpyU-notch</TD>
											<TD  colSpan="1" rowSpan="1">KU in Joules RIM</TD>
										</TR>
										<TR>
											<TD>UTS (N/mm<SUP>2</SUP>)</TD>
											<TD><asp:textbox id="txtUTS_rim" tabIndex="2" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
											<TD ><asp:textbox id="txtUTS_plate" tabIndex="6" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
											<TD><FONT size="4"><STRONG>&nbsp;a</STRONG></FONT></TD>
											<TD ><asp:textbox id="txtJoules_a" tabIndex="10" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
										</TR>
										<TR>
											<TD >YS (N/mm<SUP>2</SUP>)</TD>
											<TD ><asp:textbox id="txtYS_rim" tabIndex="3" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
											<TD><asp:textbox id="txtYS_plate" tabIndex="7" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
											<TD>&nbsp;<FONT size="4"><STRONG>b</STRONG></FONT></TD>
											<TD colSpan="1" rowSpan="1"><asp:textbox id="txtJoules_b" tabIndex="11" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
										</TR>
										<TR>
											<TD >Elongation&nbsp; %</TD>
											<TD ><asp:textbox id="txtKlengation_rim" tabIndex="4" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
											<TD><asp:textbox id="txtKlengation_plate" tabIndex="8" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
											<TD  colSpan="1" rowSpan="1">&nbsp;<FONT size="4"><STRONG>c</STRONG></FONT></TD>
											<TD  colSpan="1" rowSpan="1"><asp:textbox id="txtJoules_c" tabIndex="12" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
										</TR>
										<TR>
											<TD >Redn. in Area %</TD>
											<TD><asp:textbox id="txtRedn_rim" tabIndex="5" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
											<TD><asp:textbox id="txtRedn_plate" tabIndex="9" runat="server" CssClass="form-control"></asp:textbox></TD>
											<TD colSpan="1" rowSpan="1">&nbsp;
												<asp:label id="lblAvg" runat="server"></asp:label></TD>
											<TD  colSpan="1" rowSpan="1"><asp:label id="lblJoules" runat="server" ForeColor="Red"></asp:label></TD>
										</TR>
									</TABLE>
									<TABLE id="Table4" class="table">
										<TR>
											<TD>&nbsp;Inclusion&nbsp;</TD>
											<TD >&nbsp;Thin</TD>
											<TD></TD>
											<TD><STRONG>Thick</STRONG></TD>
										</TR>
										<TR>
											<TD  align="middle" >A</TD>
											<TD ><asp:radiobuttonlist id="rblAThin" tabIndex="13" runat="server"  RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
													<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
													<asp:ListItem Value="0.5">0.5</asp:ListItem>
													<asp:ListItem Value="1">1</asp:ListItem>
													<asp:ListItem Value="1.5">1.5</asp:ListItem>
													<asp:ListItem Value="2">2</asp:ListItem>
													<asp:ListItem Value="2.5">2.5</asp:ListItem>
													<asp:ListItem Value="3">3</asp:ListItem>
												</asp:radiobuttonlist></TD>
											<TD></TD>
											<TD><asp:radiobuttonlist id="rblAThick" runat="server"  RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
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
											<TD ><asp:radiobuttonlist id="rblBThin" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
													<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
													<asp:ListItem Value="0.5">0.5</asp:ListItem>
													<asp:ListItem Value="1">1</asp:ListItem>
													<asp:ListItem Value="1.5">1.5</asp:ListItem>
													<asp:ListItem Value="2">2</asp:ListItem>
													<asp:ListItem Value="2.5">2.5</asp:ListItem>
													<asp:ListItem Value="3">3</asp:ListItem>
												</asp:radiobuttonlist></TD>
											<TD></TD>
											<TD><asp:radiobuttonlist id="rblBThick" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
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
											<TD >C</TD>
											<TD ><asp:radiobuttonlist id="rblCThin" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
													<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
													<asp:ListItem Value="0.5">0.5</asp:ListItem>
													<asp:ListItem Value="1">1</asp:ListItem>
													<asp:ListItem Value="1.5">1.5</asp:ListItem>
													<asp:ListItem Value="2">2</asp:ListItem>
													<asp:ListItem Value="2.5">2.5</asp:ListItem>
													<asp:ListItem Value="3">3</asp:ListItem>
												</asp:radiobuttonlist></TD>
											<TD></TD>
											<TD><asp:radiobuttonlist id="rblCThick" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
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
											<TD ><asp:radiobuttonlist id="rblDThin" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
													<asp:ListItem Value="0" Selected="True">0</asp:ListItem>
													<asp:ListItem Value="0.5">0.5</asp:ListItem>
													<asp:ListItem Value="1">1</asp:ListItem>
													<asp:ListItem Value="1.5">1.5</asp:ListItem>
													<asp:ListItem Value="2">2</asp:ListItem>
													<asp:ListItem Value="2.5">2.5</asp:ListItem>
													<asp:ListItem Value="3">3</asp:ListItem>
												</asp:radiobuttonlist></TD>
											<TD></TD>
											<TD><asp:radiobuttonlist id="rblDThick" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
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
											<TD  noWrap  colSpan="1" rowSpan="1">Micro 
												Structure</TD>
											<TD  colSpan="3"><asp:radiobuttonlist id="rblStructure" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
													<asp:ListItem Value="Uniform Fine Pearlitic" Selected="True">Uniform Fine Pearlitic</asp:ListItem>
													<asp:ListItem Value="Uniform Pearlitic">Uniform Pearlitic</asp:ListItem>
													<asp:ListItem Value="Anything">Anything</asp:ListItem>
												</asp:radiobuttonlist></TD>
										</TR>
										<TR>
											<TD noWrap >Grain Size No.</TD>
											<TD  colSpan="3"><asp:checkboxlist id="chkGrain" runat="server"  RepeatDirection="Horizontal" RepeatLayout="Flow">
													<asp:ListItem Value="4">4</asp:ListItem>
													<asp:ListItem Value="5">5</asp:ListItem>
													<asp:ListItem Value="6">6</asp:ListItem>
													<asp:ListItem Value="7">7</asp:ListItem>
													<asp:ListItem Value="8">8</asp:ListItem>
												</asp:checkboxlist></TD>
										</TR>
										<TR>
											<TD >Macro</TD>
											<TD colSpan="3"><asp:radiobuttonlist id="rblMacro" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
													<asp:ListItem Value="Satisfactory" Selected="True">Satisfactory</asp:ListItem>
													<asp:ListItem Value="Not Satisfactory">Not Satisfactory</asp:ListItem>
												</asp:radiobuttonlist></TD>
										</TR>
										<TR>
											<TD >Test Results</TD>
											<TD colSpan="3"><asp:radiobuttonlist id="rblResult" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
													<asp:ListItem Value="P" Selected="True">Pass</asp:ListItem>
													<asp:ListItem Value="R">Reject</asp:ListItem>
												</asp:radiobuttonlist></TD>
										</TR>
										<TR>
											<TD >Remarks</TD>
											<TD colSpan="3"><asp:textbox id="txtRemarks" runat="server" CssClass="form-control"></asp:textbox></TD>
										</TR>
									</TABLE>
									<asp:button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:button>
							
						
					
			</div></div>
		</form>
            </div>
          <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
