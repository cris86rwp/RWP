<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PPC.aspx.vb" Inherits="WebApplication2.PPC" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>PPC</title>
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
			<asp:panel id="Panel1"  runat="server">

				<table id="Table3" class="table">
					<tr>
					 <td colspan="3"><h2>RWP Production Targets</h2><hr class="prettyline"/></td></tr>
                    <tr>
						<td><FONT color="#ff3300">FinancialYear&nbsp;:</FONT>
							<asp:RadioButtonList id="rblFinYear" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="rbl"></asp:RadioButtonList></td>
						<td colspan="2"><FONT color="#cc3300">PlanFor:</FONT>
							<asp:RadioButtonList id="rblPlanFor" CssClass="rbl" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
								<asp:ListItem Value="Day">Day</asp:ListItem>
								<asp:ListItem Value="Month">Month</asp:ListItem>
								<asp:ListItem Value="Year">Year</asp:ListItem>
							</asp:RadioButtonList></td>
					</tr>
					<tr>
						<td colSpan="3">
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
							<asp:label id="lblUser" runat="server" Visible="False"></asp:label>
							<asp:Label id="lblGroup" runat="server" Visible="False"></asp:Label></td>
					</tr>
				</table>
				<table id="Table2" class="table">
					<tr>
						<td>
							<asp:label id="Label3" runat="server" ForeColor="#804040">From Month</asp:label></td>
						<td>
							<asp:RadioButtonList id="rblFrom" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal"></asp:RadioButtonList></td>
					</tr>
					<tr>
						<td>
							<asp:label id="Label1" runat="server" ForeColor="#804040">To Month</asp:label></td>
						<td>
							<asp:RadioButtonList id="rblTo" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal" ></asp:RadioButtonList></td>
					</tr>
					<tr>
						<td><FONT color="#993300">Product</FONT></td>
						<td>
							<asp:RadioButtonList id="rblProduct" runat="server" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal" AutoPostBack="True">
								<asp:ListItem Value="01C">Wheels Cast</asp:ListItem>
								<asp:ListItem Value="01G">Good Wheels</asp:ListItem>
                                <asp:ListItem Value="03">Sets</asp:ListItem>
                                <asp:ListItem Value="03E">Sets External</asp:ListItem>

								<%--<asp:ListItem Value="02">Axles</asp:ListItem>
								
								<asp:ListItem Value="02E">Axles External</asp:ListItem>
																<asp:ListItem Value="02L">LooseAxles</asp:ListItem>
								<asp:ListItem Value="02M">MPTAxles--%>
                               
							</asp:RadioButtonList></td>
					</tr>
					<tr>
						<td colSpan="2">
							<asp:label id="lblNewQty" runat="server">New Quantity</asp:label>
							<asp:textbox id="txtNewQty" runat="server" CssClass="form-control"></asp:textbox>
							<asp:rangevalidator id="RangeValidator1" runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="txtNewQty" Type="Integer" MinimumValue="0" MaximumValue="999999"></asp:rangevalidator>
							<asp:Label id="lblAuthority" runat="server">Authority</asp:Label>
							<asp:TextBox id="txtAuthority" runat="server" CssClass="form-control" MaxLength="6"></asp:TextBox>
							<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="txtAuthority"></asp:RequiredFieldValidator>
							<asp:Label id="Label6" runat="server">Planned WDays</asp:Label>
							<asp:TextBox id="txtPlannedWDays" runat="server" CssClass="form-control"></asp:TextBox></td>
					</tr>
					<tr>
						<td vAlign="top" align="middle" colSpan="2">
							<asp:Button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:Button></td>
					</tr>
				</table>
             
                               
                    <asp:DataGrid id="dgResults" runat="server" CssClass="table" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
            


			</asp:panel></form>
                   
              </div></div></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
