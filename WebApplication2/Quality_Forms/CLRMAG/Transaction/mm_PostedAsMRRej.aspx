<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mm_PostedAsMRRej.aspx.vb" Inherits="WebApplication2.mm_PostedAsMRRej" %>
<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.0 transitional//EN">
<html>
	<head runat="server">
		<title>mm_PostedAsMRRej</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
		<meta name="vs_defaultClientScript" content="JavaScript"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>

      <%--  add...--%>
                <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../../StyleSheet1.css" />
	</head>
	<body >

        <%--add nav code--%>
        <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
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
<div class="container ">

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



			<asp:Panel id="Panel1"  runat="server"><%--style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 8px"--%>
                <div class="row">
                <div class="table-responsive">
				<table id="table2" class="table" border="0"><%--style="WIDTH: 340px; HEIGHT: 32px" cellSpacing="1" cellPadding="1" width="340" border="1"--%>
					<tr>
						<td colspan="6"><FONT size="5">Post as&nbsp;MR XC</FONT></td>
					</tr>
					<tr>
						<td  colspan="6">
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                            <hr class="prettyline" />
						</td>
					</tr>
					<tr>
						<td>WhlNo</td>
						<td>:</td>
						<td >
							<asp:TextBox id="txtWhl" runat="server" AutoPostBack="true" CssClass="form-control"></asp:TextBox></td>
						<td>HeatNo</td>
						<td>:</td>
						<td>
							<asp:TextBox id="txtHeat" runat="server" AutoPostBack="true" CssClass="form-control"></asp:TextBox></td>
					</tr>
					<tr>
						<td>Status</td>
						<td>:</td>
						<td >
							<asp:TextBox id="txtChange" runat="server"  AutoPostBack="true" CssClass="form-control"></asp:TextBox>
							<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtChange"></asp:RequiredFieldValidator></td>
						<td></td>
						<td>:</td>
						<td></td>
					</tr>
					<tr>
						<td vAlign="top" align="middle" colspan="6">
							<asp:Button id="btnChange" runat="server" Text="Change Status" CssClass="button button2" ></asp:Button>
							<asp:Label id="lblEmpCode" runat="server" Visible="False"></asp:Label></td>
					</tr>
				</table>
                    
                
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table"><%--BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4"--%>
					<SelectedItemStyle Font-Bold="true" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="true" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
                </div></div>
			</asp:Panel>
              
		</form>
    </div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
