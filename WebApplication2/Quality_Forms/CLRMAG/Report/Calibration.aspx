<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Calibration.aspx.vb" Inherits="WebApplication2.Calibration" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Baking station</title>
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

    <link href="../../../StyleSheet1.css" rel="stylesheet" />

 
</head>
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
     <div class="container">
            <div class="row">
                <div class="table-responsive">
		<form id="Form1" method="post" runat="server">
             <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <%--<asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>--%>
                 <br />
			<TABLE id="Table3" class="table"></TABLE>
				
						<TABLE id="Table1" class="table">
							<TR>
								<TD vAlign="center" align="middle" colSpan="4"><STRONG>CALIBRATION REPORT</STRONG></TD>
							</TR>
							<TR>
								<TD vAlign="center" align="left" colSpan="4">
									<asp:RadioButtonList id="rblType" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl">
										<asp:ListItem Value="BHN" Selected="True">BHN</asp:ListItem>
										<asp:ListItem Value="MAGNAGLOW">MAGNAGLOW</asp:ListItem>
										<asp:ListItem Value="ULTRASONIC">ULTRASONIC</asp:ListItem>
										<asp:ListItem Value="UV">UV</asp:ListItem>
									</asp:RadioButtonList></TD>
							</TR>
							<TR>
								<TD vAlign="center" align="left" colSpan="4">
									<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
							</TR>
						</TABLE>
					
				
						<TABLE id="Table2" class="table">
							<TR>
								<TD>From Date</TD>
								<TD>:</TD>
								<TD>
									<asp:textbox id="txtFromDate" runat="server"  CssClass="form-control" BorderStyle="Groove" AutoPostBack="True"></asp:textbox></TD>
							</TR>
							<TR>
								<TD>To Date&nbsp;</TD>
								<TD>:</TD>
								<TD>
									<asp:textbox id="txtToDate" runat="server" CssClass="form-control" BorderStyle="Groove" AutoPostBack="True"></asp:textbox></TD>
							</TR>
							<TR>
								<TD vAlign="top" align="middle" colSpan="3">
									<asp:button id="BtnShow" runat="server" CssClass="button button2" BorderStyle="Groove" Font-Size="Smaller" Font-Names="Arial" Text="Show Report"></asp:button></TD>
							</TR>
						</TABLE>
					
			
		</form>
	 </div>
                </div>
            </div>
     <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>