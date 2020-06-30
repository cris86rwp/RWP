<%@ Page Language="vb" AutoEventWireup="false" Codebehind="FumeExtraction.aspx.vb" Inherits="WebApplication2.FumeExtraction" %>
<!DOCTYPE HTML >
<HTML>
	<HEAD runat="server">
		<title>FumeExtraction</title>
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
     <link rel="stylesheet" href="../../../StyleSheet1.css" />
	</HEAD>
	<body >
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
             <div class="row">
                <div class="table-responsive">
			<asp:panel id="Panel1"  runat="server">
				<TABLE id="Table5" class="table"></TABLE>
					
							<TABLE id="Table1" class="table">
								<TR>
									<TD><FONT size="5">Fume Extraction<hr class="prettyline" />
											<asp:Label id="lblSlNo" runat="server"></asp:Label></FONT></TD>
								</TR>
							</TABLE>
			<table id="table5" class="table">			<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></table>	
							<TABLE id="Table2" class="table">
								<TR>
									<TD>FromHeat</TD>
									<TD>
										<asp:TextBox id="txtFromHeat" runat="server"  CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
									<TD>ToHeat</TD>
									<TD>
										<asp:TextBox id="txtToHeat" runat="server"  CssClass="form-control"></asp:TextBox></TD>
								</TR>
							</TABLE>
						
							<asp:DataGrid id="DataGrid2" runat="server" CssClass="table" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC">
								<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
								<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
								<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid></TD>
					
				
				<TABLE id="Table3" class="table">
					<TR>
						<TD>OffTime</TD>
						<TD>
							<asp:TextBox id="txtStartDate" tabIndex="1" runat="server"  CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
						<TD>
							<asp:TextBox id="txtStartTime" runat="server"  CssClass="form-control"></asp:TextBox></TD>
						<TD>(HH:MM)&nbsp;</TD>
						<TD>OnTime</TD>
						<TD>
							<asp:TextBox id="txtEndDate" tabIndex="1" runat="server"  CssClass="form-control" AutoPostBack="True"></asp:TextBox></TD>
						<TD>
							<asp:TextBox id="txtEndTime" runat="server"  CssClass="form-control"></asp:TextBox></TD>
						<TD>(HH:MM)</TD>
					</TR>
				</TABLE>
				<TABLE id="Table4" class="table">
					<TR>
						<TD>Remarks</TD>
						<TD>
							<asp:TextBox id="txtRemarks" runat="server"  CssClass="form-control"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD align="center" colSpan="2">
							<asp:Button id="btnSave" runat="server" Text="Save Details" CssClass="button button2"></asp:Button></TD>
					</TR>
					<TR>
						<TD align="left" colSpan="2">Following latest entries are available for edting or 
							deleteing :</TD>
					</TR>
				</TABLE>
				<asp:DataGrid id="DataGrid1" runat="server" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966" AutoGenerateColumns="False" CssClass="table">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
						<asp:BoundColumn DataField="FromHeat" ReadOnly="True" HeaderText="FromHeat"></asp:BoundColumn>
						<asp:BoundColumn DataField="ToHeat" ReadOnly="True" HeaderText="ToHeat"></asp:BoundColumn>
						<asp:BoundColumn DataField="OffDate" ReadOnly="True" HeaderText="OffDate"></asp:BoundColumn>
						<asp:BoundColumn DataField="OffTime" ReadOnly="True" HeaderText="OffTime"></asp:BoundColumn>
						<asp:BoundColumn DataField="OnDate" ReadOnly="True" HeaderText="OnDate"></asp:BoundColumn>
						<asp:BoundColumn DataField="OnTime" ReadOnly="True" HeaderText="OnTime"></asp:BoundColumn>
						<asp:BoundColumn DataField="Remarks" ReadOnly="True" HeaderText="Remarks"></asp:BoundColumn>
						<asp:BoundColumn DataField="SlNo" ReadOnly="True" HeaderText="SlNo"></asp:BoundColumn>
						<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
			</asp:panel></div></div></form></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
