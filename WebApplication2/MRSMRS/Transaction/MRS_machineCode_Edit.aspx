<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MRS_machineCode_Edit.aspx.vb" Inherits="WebApplication2.MRS_machineCode_Edit" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>MRS_machineCode_Edit</title>
		<LINK id="mrsedit" href="../../MailStyles.css" rel="stylesheet">
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
       <link rel="stylesheet" href="StyleSheet1.css" />
	</HEAD>
	<body >
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href=../../logon.aspx">
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
			<asp:Panel id="Panel1"  runat="server">
				<TABLE id="Table2" class="table">
					<TR>
						<TD colSpan="2">Machine Code Edit for Mould Machining in MRS<hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD colSpan="2">
							<asp:label id="lblMessage" runat="server" Font-Size="Medium" ForeColor="Red" Font-Bold="True"></asp:label></TD>
					</TR></TABLE>
					
							<TABLE id="Table1" class="table">
								<TR>
									<TD>Emp Code</TD>
									<TD colSpan="2">
										<asp:label id="lblEmpCode" runat="server"></asp:label></TD>
								</TR>
								<TR>
									<TD>Machining Date</TD>
									<TD colSpan="2">
										<asp:textbox id="txtMcnDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvdate" runat="server" ControlToValidate="txtMcnDate" Display="Dynamic" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD>Mould Number</TD>
									<TD colSpan="2">
										<asp:textbox id="txtMouldNumber" runat="server" CssClass="form-control"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvmldno" runat="server" ControlToValidate="txtMouldNumber" Display="Dynamic" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD>Machine Code (Reqd)</TD>
									<TD colSpan="2">
										<asp:dropdownlist id="ddlMcnList" runat="server" CssClass="form-control ll"></asp:dropdownlist>
										<asp:requiredfieldvalidator id="rfvMcnCode" runat="server" ControlToValidate="ddlMcnList" Display="Dynamic" ErrorMessage="*" InitialValue="Select"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD align="middle" colSpan="3">
										<asp:button id="BtnSave" runat="server" CssClass="button button2" Text="Save"></asp:button></TD>
								</TR>
							</TABLE>
						
							<TABLE id="Table3" class="table">
								<TR>
									<TD>
										<asp:CheckBox id="chkHelp" runat="server" AutoPostBack="True" Text="Help" Checked="True"></asp:CheckBox></TD>
								</TR>
								<TR>
									<TD>
										<asp:Label id="lblHelp" runat="server" ></asp:Label></TD>
								</TR>
							</TABLE>
						
				<asp:DataGrid id="dgData" runat="server" CssClass="table" BorderColor="White" BorderStyle="Ridge" CellSpacing="1" BorderWidth="2px" BackColor="White" CellPadding="3" GridLines="None">
					<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#9471DE"></SelectedItemStyle>
					<ItemStyle ForeColor="Black" BackColor="#DEDFDE"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#E7E7FF" BackColor="#4A3C8C"></HeaderStyle>
					<FooterStyle ForeColor="Black" BackColor="#C6C3C6"></FooterStyle>
					<PagerStyle HorizontalAlign="Right" ForeColor="Black" BackColor="#C6C3C6"></PagerStyle>
				</asp:DataGrid>
			</asp:Panel>
		</div></div></form></div>
          <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
