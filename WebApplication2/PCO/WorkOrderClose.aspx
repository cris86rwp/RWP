<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WorkOrderClose.aspx.vb" Inherits="WebApplication2.WorkOrderClose"%>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>WorkOrderClose</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
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
              function ValidateAlpha(evt)
    {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
         
        return false;
            return true;
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
			<asp:Panel id="Panel1" runat="server">
              
				<table id="Table5" class="table">
                    <tr>
                        <td align="center" colSpan="3"><h2>Work Order Close</h2><hr class="prettyline" /></td>
                    </tr>
                    </table>
                <table class="table">
                   
					<tr>
						<td >OutTurnFor</td>
						<td>Month</td>
						<td>
							<asp:DropDownList id="ddlMonth" runat="server" CssClass="form-control ll">
								<asp:ListItem Value="A">January</asp:ListItem>
								<asp:ListItem Value="B">February</asp:ListItem>
								<asp:ListItem Value="C">March</asp:ListItem>
								<asp:ListItem Value="D">April</asp:ListItem>
								<asp:ListItem Value="E">May</asp:ListItem>
								<asp:ListItem Value="F">June</asp:ListItem>
								<asp:ListItem Value="G">July</asp:ListItem>
								<asp:ListItem Value="H">August</asp:ListItem>
								<asp:ListItem Value="I">September</asp:ListItem>
								<asp:ListItem Value="J">October</asp:ListItem>
								<asp:ListItem Value="K">November</asp:ListItem>
								<asp:ListItem Value="L">December</asp:ListItem>
							</asp:DropDownList></td>
						<td>Year</td>
						<td>
							<asp:DropDownList id="ddlYear" runat="server" CssClass="form-control ll">
								<asp:ListItem Value="8">2008</asp:ListItem>
								<asp:ListItem Value="9">2009</asp:ListItem>
								<asp:ListItem Value="0">2010</asp:ListItem>
								<asp:ListItem Value="1">2011</asp:ListItem>
								<asp:ListItem Value="2">2012</asp:ListItem>
								<asp:ListItem Value="3">2013</asp:ListItem>
								<asp:ListItem Value="4">2014</asp:ListItem>
								<asp:ListItem Value="5">2015</asp:ListItem>
								<asp:ListItem Value="6">2016</asp:ListItem>
								<asp:ListItem Value="7">2017</asp:ListItem>
							</asp:DropDownList></td>
					</tr>
				</table>
              
               
				<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
				<table id="Table1"  class="table" >
					<tr>
						<td>
							<asp:RadioButtonList id="rblShops" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                                <asp:ListItem>Axle Assembly Shop</asp:ListItem>
                                <asp:ListItem>Axle Forge Shop</asp:ListItem>
                                <asp:ListItem>Axle Machine Shop</asp:ListItem>
                                <asp:ListItem>Mould Room</asp:ListItem>
                                <asp:ListItem>Steel Melting Shop</asp:ListItem>
                                <asp:ListItem>Wheel Final Processing Shop</asp:ListItem>
                            </asp:RadioButtonList></td>
					</tr>
				</table>
				<table id="Table4"  class="table" >
					<tr>
						<td >WOSelected</td>
						<td>
							<asp:Label id="lblWO" runat="server" ForeColor="Red"></asp:Label></td>
						<td>Passed</td>
						<td>
							<asp:TextBox id="txtPassed" runat="server" CssClass="form-control" ToolTip="enter 4-digit pass(only character)" MaxLength="4" onKeyPress="return ValidateAlpha(event);"></asp:TextBox></td>
						<td>Rejected</td>
						<td>
							<asp:TextBox id="txtRej" runat="server" CssClass="form-control" ToolTip="enter 6-digit reject(only character)" MaxLength="6" onKeyPress="return ValidateAlpha(event);"></asp:TextBox></td>
					</tr>
				</table>
				<table id="Table3" class="table">
					<tr>
						<td align="center" colSpan="3">
							<asp:Button id="btnSave" runat="server" Text="Save" class="button button2"></asp:Button>
							<asp:Label id="p" runat="server"></asp:Label></td>
					</tr>
				</table>
               
				<table id="Table2"  class="table">
					<tr>
						<td>
							<asp:DataGrid id="DataGrid1" CssClass="table" runat="server" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4" AllowPaging="True" GridLines="None">
								<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
								<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
								<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
								<Columns>
									<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
							</asp:DataGrid></td>
					</tr>
				</table>
                 
			</asp:Panel>
		</form>
               </div></div></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>	</body>
</html>
