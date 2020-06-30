
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProdLiningDetails.aspx.vb" Inherits="WebApplication2.ProdLiningDetails" %>
<!DOCTYPE HTML PUBLIC >
<html>

	<head runat="server">
		<title>ProdLiningDetails</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
		<meta name="vs_defaultClientScript" content="JavaScript" />
        
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
         <script type="text/javascript"src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script type="text/javascript"src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

         <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../StyleSheet1.css" />

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

                       	<asp:Panel id="pnlMain" runat="server" >

            <div class ="row">
                <div class="table-responsive">
	
		
               <%-- style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 8px"Width="123px"--%>
				<table id="Table1" class="table" border="0">
                   <%-- style="WIDTH: 651px; HEIGHT: 3px" cellSpacing="1" cellPadding="1" width="651"--%>
					<tr>
						<td colspan="3" font-weight: bold;" align="center">
							<asp:label id="lblConsignee" runat="server" Font-Bold="True"></asp:label>&nbsp;<STRONG>- 
								Lining&nbsp;Details</STRONG><hr class="prettyline" /></td>
					</tr>
					<tr>
						<td colspan="3">
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></td>
					</tr>
					<tr>
						<td colspan="3">Please <FONT color="#ff3333">Remove from usage</FONT> any Items 
							before Updating the Last LiningNo details</td>
					</tr>
				</table>
				<table id="Table2" class="table" border="0">
                  <%--  style="WIDTH: 179px; HEIGHT: 28px" cellSpacing="1" cellPadding="1" width="179"--%>
					<tr>
						<td>
							<asp:RadioButtonList id="rblItemName"  runat="server"  AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
								<asp:ListItem Value="3" Selected="True">LadleNo</asp:ListItem>
								<asp:ListItem Value="4">RoofNo</asp:ListItem>
							</asp:RadioButtonList></td>
					</tr>
				</table>
				<table id="Table4" class="table" border="0">
                   <%-- cellSpacing="1" cellPadding="1" width="300"--%>
					<tr>
						<td>
							<asp:RadioButtonList id="rblType"  runat="server"  AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl"  >
								<asp:ListItem Value="1" Selected="True">For Updation</asp:ListItem>
								<asp:ListItem Value="2">Remove from usage</asp:ListItem>
								<asp:ListItem Value="3">Delete</asp:ListItem>
								<asp:ListItem Value="4">ZeroFirstHeats</asp:ListItem>
							</asp:RadioButtonList></td>
					</tr>
				</table>
				<table id="Table3" class="table" border="0">
                   <%-- style="WIDTH: 1093px; HEIGHT: 28px" cellSpacing="1" cellPadding="1" width="1093"--%>
					<tr>
						<td>
							<asp:RadioButtonList id="rblItems"  runat="server"  AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl"></asp:RadioButtonList></td>
					</tr>
				</table>
              
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table" >  <%--CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966"--%>
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
                    
				<asp:Panel id="pnl1" runat="server">
					<table id="Table5" class="table" >
                        <%--cellSpacing="1" cellPadding="1" width="300"--%>
						<tr>
							<td>FirstHeatNo</td>
							<td>:</td>
							<td>
								<asp:TextBox id="txtFirstHeatNo" runat="server" CssClass="form-control"></asp:TextBox></td>
						</tr>
						<tr>
							<td>LastHeatNo</td>
							<td>:</td>
							<td>
								<asp:TextBox id="txtLastHeatNo" runat="server" CssClass="form-control"></asp:TextBox></td>
						</tr>
					</table>
				</asp:Panel>
				<asp:Panel id="pnl2" runat="server">
					<table id="Table7" class="table" >
						<tr>
							<td>Bottom</td>
							<td>:</td>
							<td>
								<asp:TextBox id="txtBottom" runat="server" CssClass="form-control"></asp:TextBox></td>
						</tr>
						<tr>
							<td>SideWall</td>
							<td>:</td>
							<td>
								<asp:TextBox id="txtSideWall" runat="server" CssClass="form-control"></asp:TextBox></td>
						</tr>
						<tr>
							<td>Remarks</td>
							<td>:</td>
							<td>
								<asp:TextBox id="txtRemarks" runat="server" CssClass="form-control"></asp:TextBox></td>
						</tr>
					</table>
				</asp:Panel>
				<table id="Table6" class="table" >
					<tr>
						<td align="center">
							<asp:Button id="btnSave" CssClass="button button2" runat="server"></asp:Button></td>
					</tr>
				</table></div></div>
			</asp:Panel>
		</form>
                    </div>
               
               
 <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>

	</body>
</html>
