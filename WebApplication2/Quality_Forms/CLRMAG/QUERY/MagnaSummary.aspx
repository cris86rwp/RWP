<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MagnaSummary.aspx.vb" Inherits="WebApplication2.MagnaSummary" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>MagnaSummary</title>
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
     <link rel="stylesheet" href="../../../StyleSheet1.css" />
	</HEAD>
	<body >
          <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
 <a class="navbar-brand p-0" href="#"><img src="../../..//NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
		<form id="Form1" method="post" runat="server">
            <div class="row"><div class="table-responsive">
			<asp:panel id="Panel1"  runat="server" >
				<TABLE id="Table1" class="table">
					<TR>
						<TD align="middle" colSpan="6"><FONT size="5">Magna&nbsp;Summary</FONT><hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD>Message</TD>
						<TD>:</TD>
						<TD colSpan="4">
							<asp:Label id="lblmessage" runat="server" Width="272px" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="middle" colSpan="6">
							<asp:RadioButtonList id="rblList" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="True" CssClass="rbl">
								<asp:ListItem Value="Date" Selected="True">Date</asp:ListItem>
								<asp:ListItem Value="Heat">Heat</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD>From
						</TD>
						<TD>:</TD>
						<TD>
							<asp:TextBox id="txtFrom" runat="server" CssClass="form-control"></asp:TextBox></TD>
						<TD>To
						</TD>
						<TD>:</TD>
						<TD>
							<asp:TextBox id="txtTo" runat="server" CssClass="form-control"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD>Line</TD>
						<TD>:</TD>
						<TD colSpan="4">
							<asp:RadioButtonList id="rblLine" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow" >
								<asp:ListItem Value="1">1</asp:ListItem>
								<asp:ListItem Value="1A">1A</asp:ListItem>
								<asp:ListItem Value="2">2</asp:ListItem>
								<asp:ListItem Value="2A">2A</asp:ListItem>
								<asp:ListItem Value="All" Selected="True">All</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD>Shift</TD>
						<TD>:</TD>
						<TD colSpan="4">
							<asp:RadioButtonList id="rblShift" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow" >
								<asp:ListItem Value="A">A</asp:ListItem>
								<asp:ListItem Value="B">B</asp:ListItem>
								<asp:ListItem Value="C">C</asp:ListItem>
								<asp:ListItem Value="All" Selected="True">All</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="left" colSpan="6">
							<asp:RadioButtonList id="rblQry" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="9" Selected="True">Daily Position</asp:ListItem>
								<asp:ListItem Value="1">Processed , Stocked and XC</asp:ListItem>
								<asp:ListItem Value="6">Processed , Stocked and XC Summary</asp:ListItem>
								<asp:ListItem Value="2">Off Load WhlTypeWise</asp:ListItem>
								<asp:ListItem Value="3">Off Load NewReLoad</asp:ListItem>
								<asp:ListItem Value="4">Defects List</asp:ListItem>
								<asp:ListItem Value="7">OffLoad List</asp:ListItem>
								<asp:ListItem Value="5">Not Posted Wheels</asp:ListItem>
								<asp:ListItem Value="8">Not Posted Wheels Made RM</asp:ListItem>
								<asp:ListItem Value="10">Posted in Magna and Spl</asp:ListItem>
								<asp:ListItem Value="11">Unique Processed</asp:ListItem>
								<asp:ListItem Value="12">Converted MR XC</asp:ListItem>
								<asp:ListItem Value="13">New Wheels Posted as MR XC based on Tapped Date</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="6">
							<asp:Button id="btnReport" runat="server" CssClass="button button2" Text="Show Results"></asp:Button></TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="6">
							<asp:Button id="Button1" runat="server" Text="Export to Excel" CssClass="button button2"></asp:Button></TD>
					</TR>
				</TABLE>
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
			</asp:panel>
                
                </div></div></form>
            </div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
