<%@ Page Language="vb" AutoEventWireup="false" Codebehind="calibration_bhn.aspx.vb" Inherits="WebApplication2.calibration_bhn" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>CalibrationBHN</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
		<meta name="vs_defaultClientScript" content="JavaScript"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>

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
 
	</head>
	<body>
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
			<asp:Panel id="Panel1" runat="server">
				<table id="Table4" class="table">
					<TR>
						<TD vAlign="top" align="middle" colSpan="5"><h2>Calibration of BHN</h2><hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD colSpan="5">
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
					</TR>
					<TR>
						<TD>Date:</TD>
						<TD>
							<asp:textbox id="txtDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
						<TD>Shift:</TD>
						<TD>
							<asp:radiobuttonlist id="rblShift" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="A" Selected="True">A</asp:ListItem>
								<asp:ListItem Value="B">B</asp:ListItem>
								<asp:ListItem Value="C">C</asp:ListItem>
                                <asp:ListItem Value="G">G</asp:ListItem>
							</asp:radiobuttonlist></TD>
						<TD>Operator:</TD>
                        <TD>
							<asp:TextBox id="txtOperator" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>

					</TR>
                    <tr>
                        <TD>Cope(l)</TD>
                        <TD>
							<asp:TextBox id="txtcope" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
                        <TD>Elect Operator:</TD>
                        <TD>
							<asp:TextBox id="txtelect" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
                        <TD>Mech Operator:</TD>
                        <TD>
							<asp:TextBox id="txtmech" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
                    </tr>
					<TR>
						<TD>LineNumber:</TD>
						<TD>
							<asp:radiobuttonlist id="rblLine" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="1" Selected="True">1</asp:ListItem>
								
								<asp:ListItem Value="2">2</asp:ListItem>
								
							</asp:radiobuttonlist></TD>
						<TD>WhlType:</TD>
						<TD>
							<asp:dropdownlist id="ddlWheelType" runat="server" CssClass="ll form-control"></asp:dropdownlist></TD>
						
					</TR>
				</table>
				<table id="Table1" class="table">
					<TR>
						<TD>BHN Standard</TD>
						
						<TD>
							<asp:textbox id="txtBhnCert" runat="server" CssClass="form-control"  AutoPostBack="True" MaxLength="3"></asp:textbox></TD>
						<TD>BhnObtained:</TD>
						
						<TD>
							<asp:textbox id="txtBhnMeanObtd" runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="3"></asp:textbox></TD>
					</TR>
					<TR>
						<td>AcceptableCriteria:</td>
							<td>+/-<asp:Label id="lblAcc" runat="server"></asp:Label></td>
						
					
						<TD>ProcTolerance:</TD>
						
						<TD>+/-
							<asp:Label id="lblPro" runat="server"></asp:Label>
							<asp:label id="Perc" runat="server" Font-Bold="True">%</asp:label></TD>
					</TR>
					<TR>
						<TD>Due Date:</TD>
						
						<TD colSpan="3">
							<asp:textbox id="txtDueDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
					</TR>
					<TR>
						<TD>Results:</TD>
						
						<TD colSpan="3">
							<asp:textbox id="txtResult" runat="server" CssClass="form-control">SATISFACTORY</asp:textbox></TD>
					</TR>
					<TR>
						<TD>Remarks:</TD>
					
						<TD colSpan="3">
							<asp:textbox id="txtRemark" runat="server" CssClass="form-control"></asp:textbox></TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="4">
							<asp:button id="btnSave" runat="server" CssClass="button button2" Text="Save"></asp:button></TD>
					</TR>
				</table>
				<asp:DataGrid id="DataGrid1" CssClass="table" runat="server" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" BackColor="White">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
			</asp:Panel>
                </div></div>
		</form>
            </div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
