<%@ Page Language="vb" AutoEventWireup="false" Codebehind="QCIResults.aspx.vb" Inherits="WebApplication2.QCIResults" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>QCIResults</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">

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
       <link rel="stylesheet" href="StyleSheet1.css" />
	</HEAD>

	<body>
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
            <div class="row"><div class="table-responsive">
			<asp:Panel id="Panel2"  runat="server">
				<TABLE id="Table5" class="table">
					<TR>
						<TD vAlign="top" align="middle"><FONT size="5">QCI Inspection Details Entry</FONT><hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="left">
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
					</TR>
				</TABLE>
				
							<TABLE id="Table2" class="table"></TABLE>
								
										<TABLE id="Table3" class="table">
											<TR>
												<TD>Date</TD>
												<TD>:</TD>
												<TD>
													<asp:textbox id="txtDate" runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="10"></asp:textbox></TD>
											</TR>
											<TR>
												<TD>Shift</TD>
												<TD>:</TD>
												<TD>
													<asp:RadioButtonList id="rblShift" runat="server" CssClass="rbl" RepeatDirection="Horizontal" RepeatLayout="Flow">
														<asp:ListItem Value="A">A</asp:ListItem>
														<asp:ListItem Value="B">B</asp:ListItem>
														<asp:ListItem Value="C">C</asp:ListItem>
														<asp:ListItem Value="G" Selected="True">G</asp:ListItem>
													</asp:RadioButtonList></TD>
											</TR>
										</TABLE>
									
										<TABLE id="Table4" class="table">
											<TR>
												<TD>&nbsp;</TD>
												<TD>Lab</TD>
												<TD>:</TD>
												<TD>
													<asp:textbox id="txtLab" runat="server" CssClass="form-control"></asp:textbox>
													<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtLab"></asp:requiredfieldvalidator></TD>
											</TR>
											<TR>
												<TD>Authority</TD>
												<TD>Technical</TD>
												<TD>:</TD>
												<TD>
													<asp:textbox id="txtTechnical" runat="server" CssClass="form-control"></asp:textbox>
													<asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtTechnical"></asp:requiredfieldvalidator></TD>
											</TR>
											<TR>
												<TD>&nbsp;</TD>
												<TD>Inspector</TD>
												<TD>:</TD>
												<TD>
													<asp:textbox id="txtInspector" runat="server" CssClass="form-control"></asp:textbox>
													<asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtInspector"></asp:requiredfieldvalidator></TD>
											</TR>
										</TABLE>
									
							
							<TABLE id="Table6" class="table">
								<TR>
									<TD>WheelNumber</TD>
									<TD>:</TD>
									<TD>
										<asp:textbox id="txtWheel" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvWheel_number" runat="server" ErrorMessage="*" ControlToValidate="txtWheel"></asp:requiredfieldvalidator></TD>
									<TD>HeatNumber</TD>
									<TD>:</TD>
									<TD>
										<asp:textbox id="txtHeat" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvHeat_number" runat="server" ErrorMessage="*" ControlToValidate="txtHeat"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD>LastLocation/Status</TD>
									<TD>:</TD>
									<TD colSpan="3">
										<asp:label id="lblloca" runat="server" ForeColor="Red"></asp:label>&nbsp;/
										<asp:label id="lblstatus" runat="server" ForeColor="Red"></asp:label></TD>
									<TD>
										<asp:label id="lblwheeltype" runat="server" ForeColor="Red" Visible="False"></asp:label>&nbsp;</TD>
								</TR>
							</TABLE>
							<TABLE id="Table1" class="table">
								<TR>
									<TD>WheelDisposition</TD>
									<TD>:</TD>
									<TD >
										<asp:textbox id="txtWheel_disposition" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
									<TD>Remarks</TD>
									<TD>:</TD>
									<TD>
										<asp:textbox id="txtRemarks" runat="server" CssClass="form-control"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="middle" colSpan="6">
										<asp:button id="btnSave" runat="server" CssClass="button button2" Text="Save"></asp:button>
										<asp:Label id="lblSlNo" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:Button id="btnClear" runat="server" Text="Clear" CssClass="button button2"></asp:Button></TD>
								</TR>
							</TABLE>
						
							<asp:DataGrid id="DataGrid1" CssClass="table" runat="server" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC">
								<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
								<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
								<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid>

				<asp:DataGrid id="DataGrid2" runat="server" CellPadding="4" CssClass="table" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC">
					<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
					<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
					<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
				</asp:DataGrid>
			</asp:Panel>
		</div></div></form></div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
