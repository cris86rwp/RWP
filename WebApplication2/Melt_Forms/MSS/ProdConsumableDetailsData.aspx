<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProdConsumableDetailsData.aspx.vb" Inherits="WebApplication2.ProdConsumableDetailsData" %>
<!DOCTYPE HTML >
<html  xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>ProdConsumableDetailsData</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
		<meta name="vs_defaultClientScript" content="JavaScript"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

        
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
   
          <link rel="stylesheet" href="../../../StyleSheet1.css" />
	</head>
	<body>
          <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
   <a class="navbar-brand p-0" href="#"><img src="../../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
          <img src="../../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
         <div class="container">
		<form id="Form1" method="post" runat="server">
               <div class="row">
    
                  <h4>&nbsp&nbsp&nbspSelect Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px" >
                     
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                </div>
			<asp:Panel id="Panel" runat="server">
                 <div class ="row">
                <div class="table-responsive">
				<table id="Table1" class="table">
					<tr>
						<td colSpan="3">
							<asp:label id="lblConsignee" runat="server" Font-Bold="True"></asp:label>&nbsp;<STRONG>Production 
								Consumables Details Data</STRONG><hr class="prettyline"/></td>
					</tr>
					<tr>
						<td colSpan="3">
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></td>
					</tr>
				</table>
				<table id="Table2" class="table">
					<tr>
						<td>
							<asp:Label id="Label1" runat="server"></asp:Label></td>
						<td>:</td>
						<td>
							<asp:textbox id="txtFrDt" runat="server" CssClass="form-control"></asp:textbox></td>
					</tr>
					<tr>
						<td>
							<asp:Label id="Label2" runat="server"></asp:Label></td>
						<td>:</td>
						<td>
							<asp:textbox id="txtToDt" runat="server" CssClass="form-control"></asp:textbox></td>
					</tr>
				</table>
				<asp:Panel id="pnl3" runat="server">
					<table id="Table4" class="table">
						<tr>
							<td>PLNumber</td>
							<td>
								<asp:DropDownList id="ddlPLs" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:DropDownList></td>
							<td>
								<asp:Label id="lblPLDescr" runat="server" ></asp:Label></td>
						</tr>
					</table>
				</asp:Panel>
				<asp:Panel id="pnl4" runat="server">
					<table id="Table5" class="table">
						<tr>
							<td>Furnace</td>
							<td>:</td>
							<td>
								<asp:RadioButtonList id="rblFur"  CssClass="rbl" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
									<asp:ListItem Value="A">A</asp:ListItem>
									<asp:ListItem Value="B">B</asp:ListItem>
									<asp:ListItem Value="C">C</asp:ListItem>
									<asp:ListItem Value="ALL" Selected="True">ALL</asp:ListItem>
								</asp:RadioButtonList></td>
						</tr>
					</table>
				</asp:Panel>
				<table id="Table3" class="table">
					<tr>
						<td>
							<asp:RadioButtonList id="rblType" runat="server" CssClass="rbl" AutoPostBack="True" RepeatLayout="Flow">
								<asp:ListItem Value="1" Selected="True">Stock  Position</asp:ListItem>
								<asp:ListItem Value="2">Metal Consumption</asp:ListItem>
								<asp:ListItem Value="3">Material Dump Details</asp:ListItem>
								<asp:ListItem Value="4">Furnace Fettling details</asp:ListItem>
								<asp:ListItem Value="5">PTMS Stock Items</asp:ListItem>
								<asp:ListItem Value="6">PTMS NonStock Items</asp:ListItem>
								<asp:ListItem Value="7">Heat Log Details</asp:ListItem>
							</asp:RadioButtonList></td>
					</tr>
					<tr>
						<td align="center">
							<asp:Button id="btnReport"  CssClass="button button2" runat="server" Text="Show  Data"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:button id="btnExportDetails" CssClass="button button2" runat="server" Text="Export Details"></asp:button></td>
					</tr>
				</table>
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
                    </div>
                     </div>
			</asp:Panel>
		</form>
             </div>
           <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
