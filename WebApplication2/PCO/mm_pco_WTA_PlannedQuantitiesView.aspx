<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mm_pco_WTA_PlannedQuantitiesView.aspx.vb" Inherits="WebApplication2.mm_pco_WTA_PlannedQuantitiesView" %>
<!DOCTYPE HTML >
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>mm_pco_WTA_PlannedQuantitiesView</title>
		
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
         /script>
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
			<TABLE id="Table1" class="table" <%--style="Z-INDEX: 101; LEFT: 3px; WIDTH: 373px; POSITION: absolute; TOP: 7px; HEIGHT: 434px" cellSpacing="1" cellPadding="1" width="373"--%> >
				<TR>
					<TD colSpan="3"><h2>WTA Planned Quantities</h2><hr class="prettyline" /></TD>
				</TR>
				<TR>
					<TD colSpan="3">Mode :
						<asp:label id="lblMode" runat="server" ForeColor="Red"></asp:label></TD>
				</TR>
				<TR>
					<TD colSpan="3">Message :<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
				</TR>
				<TR>
					<TD vAlign="top" align="center" colSpan="3">
                        </TD>
				</TR></TABLE>
						<asp:Panel id="Panel1" runat="server" > <%--Width="247px" Visible="False" Height="88px"--%>
							<TABLE id="Table2" class="table" >
                                 <%--style="WIDTH: 375px; HEIGHT: 171px" cellSpacing="1" cellPadding="1" width="375"--%> 
								<TR>
									<TD>Product Code--Desc</TD>
									<TD></TD>
									<TD>
										<asp:dropdownlist id="ddlProductCode" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD>WTA Number--Date</TD>
									<TD></TD>
									<TD>
										<asp:dropdownlist id="ddlWTANumber" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD>WTA Order--Date</TD>
									<TD></TD>
									<TD>
										<asp:dropdownlist id="ddlOrderNumber" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD>Quantity Date</TD>
									<TD></TD>
									<TD>
										<asp:textbox id="txtQuantityDate" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox>
										<asp:label id="lblQtyDt" runat="server" Visible="False"></asp:label></TD>
								</TR>
								<TR>
									<TD>Order Quantity</TD>
									<TD></TD>
									<TD>
										<asp:textbox id="txtOrderQty" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox></TD>
								</TR>
								<TR>
									<TD>Remarks</TD>
									<TD></TD>
									<TD>
										<asp:textbox id="txtPlanRemarks" runat="server" CssClass="form-control" MaxLength="250"></asp:textbox>
										<asp:button id="btnSave" runat="server" Text="Delete" CssClass="button button2"></asp:button></TD>
								</TR>
							</TABLE>
						</asp:Panel>
                
                <TABLE id="Table3" class="table" >
				<TR>
					<TD vAlign="top" align="left" colSpan="3">
						<asp:datagrid id="dgData" runat="server" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4" CssClass="table">
							<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
							<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
							<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
							<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></TD>
				</TR>
			</TABLE>
		</form></div></div></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>

	</body>
</html>
