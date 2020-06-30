<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CalibrationOfMagAndUTInWheelShop.aspx.vb" Inherits="WebApplication2.CalibrationOfMagAndUTInWheelShop" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>CalibrationOfMagAndUTInWheelShop</title>
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
        <link href="../../../StyleSheet1.css" rel="stylesheet" />

	</head>
	<body>          <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
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
             <div class="row">
                 <div class="table-responsive">
                     
            
 
		<form id="Form1" method="post" runat="server">
             <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
                <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />

			<asp:panel id="Panel1" runat="server">
				<TABLE id="Table4" class="table">
					<TR>
						<TD vAlign="top" align="middle" colSpan="5"><FONT size="5">Calibration<hr class="prettyline" /></FONT></TD>
					</TR>
					<TR>
						<TD colSpan="5">
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="middle" colSpan="5">
							<asp:radiobuttonlist id="rblTestType" runat="server" CssClass="rbl" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="MAG" Selected="True">MAG</asp:ListItem>
								<asp:ListItem Value="UT  Results">UT</asp:ListItem>
								<asp:ListItem Value="UT SetUp">UT SetUp</asp:ListItem>
							</asp:radiobuttonlist>
							<asp:Label id="lblSlNo" runat="server" Visible="False"></asp:Label></TD>
					</TR>
					<TR>
						<TD>Date</TD>
						<TD>
							<asp:textbox id="txtDate" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
						<TD>Shift</TD>
						<TD>
							<asp:radiobuttonlist id="rblShift" runat="server" AutoPostBack="True" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="A" Selected="True">A</asp:ListItem>
								<asp:ListItem Value="B">B</asp:ListItem>
								<asp:ListItem Value="C">C</asp:ListItem>
                                <asp:ListItem Value="G">G</asp:ListItem>
							</asp:radiobuttonlist></TD>
						<TD>Operator</TD>
                        
                        <TD>Cope(l)</TD>
                        
					</TR>
					<TR>
                       <!-- line number changed -->
						<TD>LineNumber</TD>
						<TD>
							<asp:radiobuttonlist id="rblLine" runat="server" AutoPostBack="True" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="1" Selected="True">1</asp:ListItem>
								<asp:ListItem Value="2">2</asp:ListItem>
								<asp:ListItem Value="3">3</asp:ListItem>
								<asp:ListItem Value="4">4</asp:ListItem>
							</asp:radiobuttonlist></TD>
						<TD>Present WhlType</TD>
						<TD>
							<asp:dropdownlist id="ddlWheelType" CssClass="form-control ll" runat="server" AutoPostBack="True"></asp:dropdownlist></TD>
						<TD>
							<asp:TextBox id="txtOperator" runat="server" CssClass="form-control"></asp:TextBox></TD>
                        <td><asp:TextBox ID="txtcope" runat="server" CssClass="form-control"></asp:TextBox></td>
					</TR>
				</TABLE>
				<table id="Table1" class="table"></table>
					
							<asp:Panel id="pnlMAG" runat="server">
								<TABLE id="Table2" class="table">
									<TR>
										<TD>BathConcentration:</TD>
									
										<TD>
											<asp:textbox id="txtBathConc" runat="server" AutoPostBack="True" CssClass="form-control" MaxLength="4"></asp:textbox></TD>
										<TD>Shim/PieGauge Check:</TD>
										
										<TD>
											<asp:RadioButtonList id="rblShim" runat="server" CssClass="rbl" RepeatLayout="Flow">
												<asp:ListItem Value="FOUND SATISFACTORY" Selected="True">FOUND SATISFACTORY</asp:ListItem>
												<asp:ListItem Value="FOUND NOT SATISFACTORY">FOUND NOT SATISFACTORY</asp:ListItem>
											</asp:RadioButtonList></TD>
									</TR>
								</TABLE>
							</asp:Panel>
							<asp:Panel id="pnlUT" runat="server">
								<TABLE id="Table7" class="table">
									<TR>
										<TD>TimeFrom</TD>
										<TD>
											<asp:textbox id="txtTimeFrom" runat="server" AutoPostBack="True" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
										<TD>TimeTo</TD>
										<TD>
											<asp:textbox id="txtTimeTo" runat="server" AutoPostBack="True" CssClass="form-control" MaxLength="5"></asp:textbox></TD>
									</TR>
								</TABLE>
								<table id="Table3" class="table">
                                    </table>
									
											<asp:Panel id="pnlResults" runat="server">
												<TABLE id="Table5" class="table">
													<TR>
														<TD>Results</TD>
														<TD>
															<asp:textbox id="txtResult" runat="server" CssClass="form-control">SATISFACTORY</asp:textbox></TD>
													</TR>
												</TABLE>
											</asp:Panel>
											<asp:Panel id="pnlSetUp" runat="server">
												<TABLE id="Table6" class="table">
													<TR>
														<TD> Changed To WhlType</TD>
														<TD>
															<asp:dropdownlist id="ddlWheelType1" runat="server" CssClass="form-control ll"></asp:dropdownlist></TD>
													</TR>
												</TABLE>
											</asp:Panel>
							
								
							</asp:Panel>
					<table class="table">
                        <tr>
						<TD>Remarks</TD>
						<TD>
							<asp:textbox id="txtRemark" runat="server" CssClass="form-control"></asp:textbox></TD>
					</tr>
					<tr>
						<TD align="Center" colspan="6">
							<asp:button id="btnSave" runat="server" CssClass="button button2" Text="Save"></asp:button></TD>
					</tr>
				</table>
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
			</asp:panel></form></div></div></div>
            <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
