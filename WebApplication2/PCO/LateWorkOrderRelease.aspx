<%@ Page Language="vb" AutoEventWireup="false" Codebehind="LateWorkOrderRelease.aspx.vb" Inherits="WebApplication2.LateWorkOrderRelease" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>LateWorkOrderRelease</title>
		<LINK href="../../MailStyles.css" rel="stylesheet">
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

         <link rel="stylesheet" href="../StyleSheet1.css" />
            <script>

function OnlyNumericEntry() {
        if ((event.keyCode < 48 || event.keyCode > 57)) {
        event.returnValue = false;
    }
                }
                </script>
	</head>
	<body>
           <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
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
			<TABLE id="Table1" class="table">
				<TR>
					<TD align="center" colSpan="3"><h2>Late Release of Work Orders</h2><hr class="prettyline"</TD>
				</TR>
				<TR>
					<TD align="left" colSpan="3" nowrap="nowrap"><asp:label id="lblHelp" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD>Employee Code</TD>
					<TD>:</TD>
					<TD><asp:label id="lblEmpCode" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD>Mesage:</TD>
					
					<TD><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
				
                <TD>
                <a href="LateWorkOrderRelease.aspx" ><font color="red">LateWorkOrderRelease.aspx</font></a>
                    </TD>
                    </TR>
				<TR>
					<TD>Work Order Number</TD>
					<TD>:</TD>
					<TD><asp:textbox id="txtWorkOrder" runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="4" ToolTip="Enter 4-digit WorkOrder No(not only numeric)"></asp:textbox><asp:requiredfieldvalidator id="rfvwo" runat="server" ControlToValidate="txtWorkOrder" Display="Dynamic" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
				</TR>
				<TR>
					<TD>Product Code</TD>
					<TD>:</TD>
					<TD><asp:textbox id="txtProductCode" runat="server" CssClass="form-control" AutoPostBack="True" MaxLength="6" ToolTip="Enter 6-digit Product code No(only numeric)" onkeypress="OnlyNumericEntry()"></asp:textbox><asp:requiredfieldvalidator id="rfvProdCode" runat="server" ControlToValidate="txtProductCode" Display="Dynamic" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
				</TR>
				<TR>
					<TD>Work Order Qty</TD>
					<TD>:</TD>
					<TD><asp:textbox id="txtWoQty" runat="server" CssClass="form-control" AutoPostBack="True" ToolTip="Enter Product Quty(only numeric)" onkeypress="OnlyNumericEntry()"></asp:textbox><asp:requiredfieldvalidator id="rfvQty" runat="server" ControlToValidate="txtWoQty" Display="Dynamic" ErrorMessage="*"></asp:requiredfieldvalidator><asp:rangevalidator id="rvQty" runat="server" ControlToValidate="txtWoQty" Display="Dynamic" ErrorMessage="?!" Type="Integer" MinimumValue="1" MaximumValue="50"></asp:rangevalidator></TD>
				</TR>
				<TR>
					<TD align="center" colSpan="3"><asp:button id="btnSave" runat="server" CssClass="button button2" Text="Save"></asp:button><asp:label id="lblSlNo" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD align="left" colSpan="3"><asp:datagrid id="dgData" runat="server" CssClass="table" >
							<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
							<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
							<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
							<Columns>
								<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
						</asp:datagrid></TD>
				</TR>
			</TABLE>
		</form> </div></div></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>	</body>
</html>
