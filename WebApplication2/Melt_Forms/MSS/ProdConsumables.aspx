<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProdConsumables.aspx.vb" Inherits="WebApplication2.ProdConsumables" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head runat="server">
		<title>ProdConsumables</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
		<meta name="vs_defaultClientScript" content="JavaScript" />
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
       
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

   
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    

        <link rel="stylesheet" href="../../StyleSheet1.css" />
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

                <asp:Panel id="Panel1"  runat="server">

            <div class="row">
            <div class="table-responsive">
		
			 <%--style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 8px"--%>
				<TABLE id="Table1" class="table"> <%--style="WIDTH: 375px; HEIGHT: 8px" cellSpacing="1" cellPadding="1" width="375"--%>
					<TR>
						<TD>
							<strong><asp:label id="lblConsignee" runat="server"></asp:label>&nbsp;Production 
							Consumables Advised Norms</strong><hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD>
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
					</TR>
				</TABLE>
				<TABLE id="Table3" class="table" > <%--style="WIDTH: 477px; HEIGHT: 30px" cellSpacing="1" cellPadding="1" width="477"--%>
					<TR>
						<TD align="right" >PlNumber</TD> <%--style="WIDTH: 60px"--%>
						<TD align="left" > <%--style="WIDTH: 57px"--%>
							<asp:DropDownList id="ddlPLs" runat="server" AutoPostBack="True" CssClass="form-control ll" ></asp:DropDownList></TD>
						<TD>
							<asp:Label id="lblPLDescr" runat="server"></asp:Label></TD>
					</TR>
				</TABLE>
				<TABLE id="Table4" class="table"> <%--cellSpacing="1" cellPadding="1" width="300"--%>
					<TR>
						<TD>PerHeat</TD>
						<TD>
							<asp:TextBox id="txtPerDay" runat="server"  CssClass="form-control"></asp:TextBox></TD>
						<TD>AdvisedNorm</TD>
						<TD>
							<asp:TextBox id="txtAdvisedNorm" runat="server"  CssClass="form-control"></asp:TextBox></TD>
						<TD>PerUnit</TD>
						<TD>
							<asp:TextBox id="txtPerUnit" runat="server" CssClass="form-control"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD>ShelfLife</TD>
						<TD>
							<asp:TextBox id="txtShelfLife" runat="server"  CssClass="form-control "></asp:TextBox></TD>
						<TD>LifeUnit</TD>
						<TD>
							<asp:TextBox id="txtLifeUnit" runat="server" CssClass="form-control"></asp:TextBox></TD>
                        </tr>
                    <tr>
						<TD  colSpan="5">
							<asp:Button id="btnSave" runat="server" Text="Save"  class="button button2" ></asp:Button></TD>
					</TR>
				</TABLE>
                </div></div>
                <div class="row">
            <div class="table-responsive">
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table">
                    <%--CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966"--%>
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
                        </div></div>
			</asp:Panel>
		</form></div>
        
 <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>

	</body>
</html>
