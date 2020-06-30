<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ManualRMR.aspx.vb" Inherits="WebApplication2.ManualRMR" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>Manual RMR</title>
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

         <link rel="stylesheet" href="../StyleSheet1.css" />
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
			<TABLE id="Table3" class="table">
				<TR>
					<TD align="center" colSpan="3"><h2>Manual RMR</h2> <hr class="prettyline" />
						<asp:label id="lblUser" runat="server" Visible="False"></asp:label></TD>
				</TR>
				<TR>
					<TD colSpan="3"><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
				</TR></TABLE>
				
					<asp:panel id="Panel1" runat="server" >
							<TABLE id="Table1" class="table">
								<TR>
									<TD colSpan="2"></TD>
								</TR>
								<TR>
									<TD>
										<asp:Label id="lblOldPassword" runat="server">Password:</asp:Label></TD>
									<TD>
										<asp:TextBox id="txtOldPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>
										<asp:Label id="lblNewPassword" runat="server">New Password:</asp:Label></TD>
									<TD>
										<asp:TextBox id="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>&nbsp;</TD>
								</TR>
								<TR>
									<TD align="center" colSpan="2">
										<asp:Button id="btnLogin" runat="server" CssClass="button button2" Text="Login"></asp:Button>&nbsp;
										<asp:Button id="btnCancel" runat="server" CssClass="button button2" Text="Cancel"></asp:Button>&nbsp;&nbsp;</TD>
								</TR>
								<TR>
									<TD align="right" colSpan="2">
										<asp:Button id="btnChange" runat="server" Text="Change Password" BorderStyle="None"  CssClass="button button2"></asp:Button></TD>
								</TR>
							</TABLE>
						</asp:panel>
				
					<asp:panel id="Panel2" runat="server" Visible="False" >
							<TABLE class="table">
								<TR>
									<TD colSpan="2"></TD>
								</TR>
								<TR>
									<TD >WorkOrder:</TD>
									<TD>
										<asp:DropDownList id="ddlWorkorder" runat="server" AutoPostBack="True" CssClass="form-control ll "></asp:DropDownList>
										<asp:Label id="lblWorkOrder" runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD >Shop Code:</TD>
									<TD>
										<asp:DropDownList id="ddlShopCode" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:DropDownList>
										<asp:Label id="lblShopCode" runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD >PL Number:</TD>
									<TD>
										<asp:DropDownList id="ddlPlNumber" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:DropDownList>
										<asp:Label id="lblPLNumber" runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD >RouteCode:</TD>
									<TD >
										<asp:DropDownList id="ddlRouteCode" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:DropDownList>
										<asp:Label id="lblRouteCode" runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD >RouteSequence:</TD>
									<TD >
										<asp:DropDownList id="ddlRouteSeq" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:DropDownList>
										<asp:Label id="lblRouteSequence" runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD vAlign="top" >PLNumberDetails:</TD>
									<TD>
										<asp:Label id="lblPLDetails" runat="server" Visible="False"></asp:Label></TD>
								</TR>
								<TR>
									<TD vAlign="top" >Quantity:</TD>
									<TD>
										<asp:TextBox id="txtPLQty" runat="server"  CssClass="form-control"></asp:TextBox>
										<asp:Label id="lblQuantity" runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="center" colSpan="2">
										<asp:Label id="lblWarning" runat="server" Font-Bold="True"></asp:Label></TD>
								</TR>
								<TR>
									<TD align="center"  colSpan="2">
										<asp:Button id="btnGenerate" runat="server"  Text="Generate RMR" CssClass="button button2"></asp:Button>&nbsp;
										<asp:Button id="btnCancel1" runat="server" Visible="False" Width="93px" Text="No" CausesValidation="False" CssClass="button button2"></asp:Button></TD>
								</TR>
								<TR>
									<TD align="right"  colSpan="2">
										<asp:Button id="btnLogOut" runat="server" Text="LogOut" BorderStyle="None" CssClass="button button2"></asp:Button></TD>
								</TR>
								<TR>
									<TD align="right"  colSpan="2"></TD>
								</TR>
								<TR>
									<TD align="center" colSpan="2">
										<asp:DataGrid id="grdView" runat="server" Visible="False" AutoGenerateColumns="False" CssClass="table">
											<ItemStyle BackColor="#FFE6CC"></ItemStyle>
											<HeaderStyle BackColor="#99CCFF"></HeaderStyle>
											<Columns>
												<asp:BoundColumn DataField="workorder_number" HeaderText="Work Order"></asp:BoundColumn>
												<asp:BoundColumn DataField="Pl_number" HeaderText="Pl Number"></asp:BoundColumn>
												<asp:BoundColumn DataField="number" HeaderText="RMR Number"></asp:BoundColumn>
												<asp:BoundColumn DataField="rmr_quantity" HeaderText="Quantity"></asp:BoundColumn>
											</Columns>
										</asp:DataGrid></TD>
								</TR>
							</TABLE>
						</asp:panel>
				
			
		</form>
            </div></div></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
