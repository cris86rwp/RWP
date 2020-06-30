<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MagnaReportsForSSMOLD.aspx.vb" Inherits="WebApplication2.MagnaReportsForSSMOLD" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>MagnaReportsForSSMOLD</title>
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
			<asp:panel id="Panel1"  runat="server">
				<TABLE id="Table2" class="table">
					<TR>
						<TD vAlign="top" align="middle" colSpan="4"><FONT size="5">Magna View</FONT><hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD colSpan="4">
							<asp:label id="lblMessage" runat="server" DESIGNTIMEDRAGDROP="162" Font-Size="Small" ForeColor="Red" Font-Bold="True"></asp:label></TD>
					</TR>
					<TR>
						<TD>HeatNumber</TD>
						<TD>:</TD>
						<TD style="WIDTH: 197px">
							<asp:TextBox id="txtHeatNo" runat="server" CssClass="form-control"></asp:TextBox></TD>
						<TD>
							<asp:Button id="Button1" runat="server" Text="302 Details For MagnaGlow Inspection" CssClass="button button2"></asp:Button></TD>
					</TR>
					<TR>
						<TD>Date</TD>
						<TD>:</TD>
						<TD style="WIDTH: 197px">
							<asp:TextBox id="txtDate" runat="server" CssClass="form-control" ></asp:TextBox></TD>
						<TD>
							<asp:Button id="Button2" runat="server" Text="FI Score" CssClass="button button2"></asp:Button></TD>
					</TR>
					<TR>
						<TD>Date</TD>
						<TD>:</TD>
						<TD style="WIDTH: 197px">As Above</TD>
						<TD>
							<asp:Button id="Button3" runat="server" Text="MagnaGlow Inspection Hourly Status" CssClass="button button2"></asp:Button></TD>
					</TR>
					<TR>
						<TD>Date</TD>
						<TD>:</TD>
						<TD style="WIDTH: 197px">As Above</TD>
						<TD>
							<asp:Button id="Button4" runat="server" Text="MagnaGlow Inspection Score" CssClass="button button2"></asp:Button></TD>
					</TR>
					<TR>
						<TD>Date</TD>
						<TD>:</TD>
						<TD style="WIDTH: 197px">As above</TD>
						<TD>
							<asp:Button id="Button5" runat="server" Text="MagnaGlow Inspection Offload Score" CssClass="button button2"></asp:Button></TD>
					</TR>
					<TR>
						<TD>DateAsAbove</TD>
						<TD>:</TD>
						<TD style="WIDTH: 197px">
							<asp:RadioButtonList id="rblLine" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="1">1</asp:ListItem>
								<asp:ListItem Value="1A">1A</asp:ListItem>
								<asp:ListItem Value="2">2</asp:ListItem>
								<asp:ListItem Value="2A">2A</asp:ListItem>
								<asp:ListItem Value="All" Selected="True">All</asp:ListItem>
							</asp:RadioButtonList></TD>
						<TD>
							<asp:Button id="Button6" runat="server" Text="MagnaGlow Inspection Wheels Saved " CssClass="button button2"></asp:Button></TD>
					</TR>
					<TR>
						<TD>DateAsAbove</TD>
						<TD></TD>
						<TD style="WIDTH: 197px">
							<asp:RadioButtonList id="rblShift" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="A">A</asp:ListItem>
								<asp:ListItem Value="B">B</asp:ListItem>
								<asp:ListItem Value="C">C</asp:ListItem>
								<asp:ListItem Value="All" Selected="True">All</asp:ListItem>
							</asp:RadioButtonList></TD>
						<TD>
							<asp:Button id="Button8" runat="server" Text="MagnaGlow Processing" CssClass="button button2"></asp:Button></TD>
					</TR>
					<TR>
						<TD>Date</TD>
						<TD>:</TD>
						<TD style="WIDTH: 197px">As Above</TD>
						<TD>
							<asp:Button id="Button7" runat="server" Text="MagnaGlow Inspection XC Score" CssClass="button button2"></asp:Button></TD>
					</TR>
				</TABLE>
				<asp:DataGrid id="DataGrid1" runat="server" Width="672px" CellPadding="4" CssClass="table" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966">
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
