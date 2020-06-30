<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProdLiningPLs.aspx.vb" Inherits="WebApplication2.ProdLiningPLs" %>
<!DOCTYPE HTML PUBLIC >
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>ProdLiningPLs</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
		<meta name="vs_defaultClientScript" content="JavaScript"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
           <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

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
                 <asp:panel id="Panel1"  runat="server">

            <div class ="row">
                <div class="table-responsive">
		
			
             <%--   style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px"--%>
				<table id="Table1" class="table" border="0">
                   <%-- style="WIDTH: 1077px; HEIGHT: 51px" cellSpacing="1" cellPadding="1" width="1077"--%>
					<tr>
						<td  align="center">
							<asp:label id="lblConsignee" runat="server" Font-Bold="True"></asp:label>&nbsp;<STRONG>-&nbsp;Lining&nbsp;PLs</STRONG><hr class="prettyline" /></td>
					</tr>
					<tr>
						<td>
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></td>
					</tr>
				</table>
				<table id="Table3" class="table" border="0">
					<tr>
						<td>
							<asp:RadioButtonList id="rblLiningType" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl"></asp:RadioButtonList></td>
					</tr>
				</table>
				<table id="Table2" class="table" border="0">
                     <%--style="WIDTH: 399px; HEIGHT: 28px" cellSpacing="1" cellPadding="1" width="399"--%>
					<tr>
						<td>
							<asp:RadioButtonList id="rblLinedBy"  runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl" ></asp:RadioButtonList></td>
					</tr>
				</table>
				<table id="Table4" class="table" border="0">
					<tr>
						<td>LiningNo</td>
						<td>:</td>
						<td>
							<asp:DropDownList id="ddlLiningNo" CssClass="form-control ll" runat="server" AutoPostBack="True"></asp:DropDownList></td>
					</tr>
				</table>
                    <div class="row">
                        <div class="table-responsive">
				<asp:DataGrid id="DataGrid1" CssClass="table" runat="server" >  <%--CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966"--%>
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid></div></div>
				<table id="Table6" class="table" border="0">
                  <%--  style="WIDTH: 807px; HEIGHT: 28px" cellSpacing="1" cellPadding="1" width="807"--%>
					<tr>
						<td>
							<asp:RadioButtonList id="rblPL" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl"></asp:RadioButtonList></td>
					</tr>
				</table>
				<table id="Table5" class="table" border="0">
                    <%--cellSpacing="1" cellPadding="1" width="300" --%>
					<tr>
						<td vAlign="top" align="left">
							<table id="Table7"class="table" border="0"></table>
                                <%-- style="WIDTH: 211px; HEIGHT: 88px" cellSpacing="1" cellPadding="1" width="211"--%>
								<tr>
									<td>PO/DBRNo</td>
									<td>:</td>
									<td>
										<asp:DropDownList id="ddlPO" runat="server" CssClass="form-control ll" AutoPostBack="True"></asp:DropDownList></td>
								</tr>
								<tr>
									<td colspan="3">
										<asp:Label id="lblSupplier" runat="server"></asp:Label></td>
								</tr>
								<tr>
									<td>Qty</td>
									<td>:</td>
									<td>
										<asp:TextBox id="txtQty" runat="server" CssClass="form-control"></asp:TextBox></td>
								</tr>
								<tr>
									<td>SetNo</td>
									<td>:</td>
									<td>
										<asp:TextBox id="txtSetNo" runat="server" CssClass="form-control" ></asp:TextBox></td>
								</tr>
								<tr>
									<td vAlign="top" align="center" colspan="3">
										<asp:Button id="btnSave" runat="server" CssClass="button button2" Text="Save"></asp:Button></td>
								</tr>
								<tr>
									<td vAlign="top" align="left" colspan="3">Saved PLs :</td>
								</tr>
					<tr>
							<asp:DataGrid id="DataGrid3" runat="server" CssClass="table" >  <%--CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966"--%>
								<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
								<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
								<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
								<Columns>
									<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
							</asp:DataGrid></td>
						<td vAlign="top" align="left">
							<asp:DataGrid id="DataGrid2" runat="server" CssClass="table" > <%--CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC"--%>
								<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
								<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
								<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid></td>
					</tr>
				</table></div></div>
			</asp:panel></form>
                    </div>
                <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
