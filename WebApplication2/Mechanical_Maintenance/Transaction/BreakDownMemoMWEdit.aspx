<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BreakDownMemoMWEdit.aspx.vb" Inherits="WebApplication2.BreakDownMemoMWEdit" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>BreakDownMemoEdit</title>
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
         <link rel="stylesheet" href="../../StyleSheet1.css" />
    </HEAD>
	<body bgColor="#99ccff" >
		  <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
<!--/.Navbar -->

         
         <div class="container">
		<form id="Form1" method="post" runat="server">
             <div class="row">
    
                  <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
      </div>
             <div class="row">
                <div class="table-responsive">
			<asp:panel id="Panel2" runat="server">
		<TABLE id="Table1" class="table">
					<TR>
						<TD align="middle">Break Down Memo <hr class="prettyline" /></TD>
					</TR>
					<TR>
			<TABLE id="Table6" class="table">
				<TR>
					<TD vAlign="top" align="left">
                        <asp:panel id="Panel1" runat="server" >
								<TR>
									<TD><FONT size="5">BreakDownMemo (Maintenance) - Edit&nbsp;</FONT></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label>
										<asp:label id="lblGroup" runat="server"></asp:label>
										<asp:label id="lblUserID" runat="server"></asp:label></TD>
								</TR>
						
						
								<TR>
									<TD>BreakDownDate</TD>
									<TD>:</TD>
									<TD>
										<asp:textbox id="txtDate" runat="server" CssClass="form-control"></asp:textbox></TD>
								</TR>
						<TR>
							<TD><asp:RadioButtonList id="rblBDShop" runat="server" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl"></asp:RadioButtonList>
						</TD>
                                </TR>
								<TR>
									<TD>
										<asp:RadioButtonList id="rblBDType" runat="server" CssClass="rbl" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal"></asp:RadioButtonList></TD>
								</TR>
						<TR>
							<TD><asp:RadioButtonList id="rblMemo" runat="server" CssClass="rbl" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal"></asp:RadioButtonList>
						</TD>
                                </TR>
								<TR>
									<TD>Maintenance Remarks</TD>
									<TD>:</TD>
									<TD>
										<asp:textbox id="txtWorkDone" runat="server" CssClass="form-control" TextMode="MultiLine" Height="91px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD>StaffAttended</TD>
									<TD>:</TD>
									<TD>
										<asp:textbox id="txtStaff" runat="server" CssClass="form-control"></asp:textbox>&nbsp;&nbsp;
										<asp:radiobuttonlist id="rblTypeOfFailure" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal">
											<asp:ListItem Value="M" Selected="True">Maintenance</asp:ListItem>
											<asp:ListItem Value="O">Operational</asp:ListItem>
										</asp:radiobuttonlist>&nbsp;
									</TD>
								</TR>
								<TR>
									<TD colSpan="3">Do you want to add Spares ?
										<asp:RadioButtonList id="rblSpares" runat="server" CssClass="rbl" AutoPostBack="True" RepeatLayout="Flow" RepeatDirection="Horizontal">
											<asp:ListItem Value="No" Selected="True">No</asp:ListItem>
											<asp:ListItem Value="Yes">Yes</asp:ListItem>
										</asp:RadioButtonList></TD>
								</TR>
						
						</asp:panel></TD>
					<TD vAlign="top" align="left">
                        <asp:datagrid id="DataGrid1" runat="server" CssClass="table" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966">
							<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
							<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
							<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
							<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
						</asp:datagrid><asp:label id="lblMachineCode" runat="server" Visible="False"></asp:label><asp:label id="lblSubAssembly" runat="server" Visible="False"></asp:label>
						<asp:label id="lblFailure" runat="server" Visible="False"></asp:label>
						<asp:label id="lblMaintenanceGroup" runat="server" Visible="False"></asp:label></TD>
				</TR>
				<TR>
					<TD vAlign="top" align="left" colSpan="2"><asp:panel id="pnlSpares" runat="server">
							
								<TR>
									<TD vAlign="top" align="left">
																<TR>
												<TD>
													<P>SparesList</P>
												</TD>
												<TD>:</TD>
												<TD>
													<asp:dropdownlist id="ddlSparesList" CssClass="form-control ll" runat="server" AutoPostBack="True"></asp:dropdownlist></TD>
											</TR>
											<TR>
												<TD>PLNumber</TD>
												<TD>:</TD>
												<TD>
													<asp:textbox id="txtPLNumber" runat="server" CssClass="form-control" AutoPostBack="True" Height="22px"></asp:textbox></TD>
											</TR>
											<TR>
												<TD>Quantity</TD>
												<TD>:</TD>
												<TD>
													<asp:textbox id="txtPlQty" runat="server" CssClass="form-control"></asp:textbox></TD>
											</TR>
											<TR>
												<TD align="middle" colSpan="3">
													<asp:button id="btnPls" runat="server" CssClass="button button2" Text="Add PL Number`s"></asp:button></TD>
											</TR>
							
									</TD>
									<TD vAlign="top" align="left">
										<asp:DataGrid id="grdSpares" runat="server" CssClass="table" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4">
											<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
											<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
											<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
											<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
											<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
										</asp:DataGrid></TD>
								</TR>
							
						</asp:panel></TD>
				</TR>
				<TR>
					<TD vAlign="top" align="middle" colSpan="2">
                        <asp:button id="btnSave" runat="server" CssClass="button button2" Text="Save" >

                        </asp:button>
                        <asp:button id="btnClear" runat="server" CssClass="button button2" Text="Clear" >

                        </asp:button></TD>
				</TR>
			</TABLE>
                    </asp:panel>
                    </div>
                 </div>
		</form>
             </div>
	</body>
</HTML>
