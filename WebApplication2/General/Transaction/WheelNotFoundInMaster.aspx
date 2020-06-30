<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WheelNotFoundInMaster.aspx.vb" Inherits="WebApplication2.WheelNotFoundInMaster"%>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>WheelNotFoundInMaster</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
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
       <link rel="stylesheet" href="../../StyleSheet1.css" />
            <script>

function OnlyNumericEntry() {
        if ((event.keyCode < 48 || event.keyCode > 57)) {
        event.returnValue = false;
    }
}
              function ValidateAlpha(evt)
    {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
         
        return false;
            return true;
    }
</script>
	</head>
	<body >
              <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
   <a class="navbar-brand p-0" href="#"><img src="../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
          <img src="../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
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
            <div class="row"><div class="table-responsive">
			<asp:panel id="Panel1"  runat="server">
				<TABLE id="Table1" class="table">
					<TR>
						<TD>Wheel Not Found In Master<hr class="prettyline" />
							<asp:Label id="lblGroup" runat="server" Visible="False"></asp:Label></TD>
					</TR>
					<TR>
						<TD>
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
					</TR>
					<TR>
						<TD>
							<asp:RadioButtonList id="rblType" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
								<asp:ListItem Value="AWMCLR" Selected="True">AWMCLR</asp:ListItem>
								<asp:ListItem Value="MLDING">MLDING</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
				</TABLE>
				<asp:Panel id="pnlAWMCLR" runat="server">
					<TABLE id="Table2" class="table">
						<TR>
							<TD>WhlNo<span class="glyphicon-asterisk" style="color:red"></TD>
							<TD>HeatNo<span class="glyphicon-asterisk" style="color:red"></TD>
							<TD>YearOfManf</TD>
							<TD>FedDate</TD>
						</TR>
						<TR>
							<TD>
								<asp:TextBox id="txtWhlNo" runat="server" CssClass="form-control" MaxLength="6" ToolTip="Enter Wheel Number(only numeric)" onkeypress="OnlyNumericEntry()"></asp:TextBox></TD>
							<TD>
								<asp:TextBox id="txtHeatNo" runat="server" CssClass="form-control" MaxLength="6" ToolTip="Enter Heat Number(only numeric)" onkeypress="OnlyNumericEntry()"></asp:TextBox></TD>
							<TD>
								<asp:TextBox id="txtYearOfManf" runat="server" CssClass="form-control"></asp:TextBox></TD>
							<TD>
								<asp:TextBox id="txtFedDate" runat="server" CssClass="form-control" ToolTip="date format mm/dd/yyyy" onkeypress="OnlyNumericEntry()"></asp:TextBox></TD>
						</TR>
					</TABLE>
					<asp:RadioButtonList id="rblWhlType" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl"></asp:RadioButtonList>
					<TABLE id="Table3" >
						<TR>
							<TD vAlign="top" align="middle">
								<asp:Button id="btnAWMCLR" runat="server" Text="Save WNFM Wheel" CssClass="button button2"></asp:Button></TD>
						</TR>
					</TABLE>
				</asp:Panel>
				<asp:Panel id="pnlMLDING" runat="server">
					<TABLE id="Table4" class="table">
						<TR>
							<TD>WhlNo</TD>
							<TD>
								<asp:Label id="lblWhlNo" runat="server" BackColor="#FFC080"></asp:Label>&nbsp;</TD>
							<TD>HeatNo</TD>
							<TD >
								<asp:Label id="lblHeatNo" runat="server" BackColor="#FFC0FF"></asp:Label></TD>
							<TD>WhlType</TD>
							<TD>
								<asp:Label id="lblWhlType" runat="server" BackColor="#FFC080"></asp:Label>&nbsp;</TD>
							<TD >YearOfManf</TD>
							<TD>
								<asp:Label id="lblYearOfManf" runat="server" BackColor="Yellow"></asp:Label>&nbsp;</TD>
						</TR>
						<TR>
							<TD>WhlReadAtMR<span class="glyphicon-asterisk" style="color:red"></span></TD>
							<TD>
								<asp:TextBox id="txtWhlReadAtMR" runat="server" CssClass="form-control" MaxLength="3" ToolTip="Enter WheelReadAtMR Number(only numeric)" onkeypress="OnlyNumericEntry()"></asp:TextBox></TD>
							<TD>ActualWheelNo<span class="glyphicon-asterisk" style="color:red"></span></TD>
							<TD >
								<asp:TextBox id="txtWheel_number" runat="server" CssClass="form-control" MaxLength="3" ToolTip="Enter Wheel Number(only numeric)" onkeypress="OnlyNumericEntry()"></asp:TextBox></TD>
							<TD>ActualHeatNo<span class="glyphicon-asterisk" style="color:red"></span></TD>
							<TD>
								<asp:TextBox id="txtheat_number" runat="server" CssClass="form-control" MaxLength="6" ToolTip="Enter Wheel Number(only numeric)" onkeypress="OnlyNumericEntry()"></asp:TextBox></TD>
							<TD >SIC</TD>
							<TD>
								<asp:TextBox id="txtSIC" runat="server" CssClass="form-control" MaxLength="3" ToolTip="Enter only character" onkeypress="onlyLetter(this)"></asp:TextBox></TD>
						</TR>
						<TR>
							<TD>MRDate</TD>
							<TD>
								<asp:TextBox id="txtMRDate" runat="server" CssClass="form-control"></asp:TextBox></TD>
							<TD>Remarks</TD>
							<TD  colSpan="5">
								<asp:TextBox id="txtRemarks" runat="server" CssClass="form-control" MaxLength="250"></asp:TextBox></TD>
						</TR>
					</TABLE>
					<asp:DataGrid id="DataGrid1" runat="server" BackColor="White" CellPadding="4" CssClass="table" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966" AutoGenerateColumns="False">
						<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
						<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
						<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
						<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
						<Columns>
							<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
							<asp:BoundColumn DataField="WhlNo" ReadOnly="True" HeaderText="WhlNo"></asp:BoundColumn>
							<asp:BoundColumn DataField="HeatNo" ReadOnly="True" HeaderText="HeatNo"></asp:BoundColumn>
							<asp:BoundColumn DataField="WhlType" ReadOnly="True" HeaderText="WhlType"></asp:BoundColumn>
							<asp:BoundColumn DataField="YearOfManf" HeaderText="YearOfManf"></asp:BoundColumn>
							<asp:BoundColumn DataField="SlNo" HeaderText="SlNo"></asp:BoundColumn>
							<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
						</Columns>
						<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
					</asp:DataGrid>
					<TABLE id="Table5" class="table">
						<TR>
							<TD>
								<asp:Label id="lblSlNo" runat="server" Visible="False"></asp:Label>
								<asp:Button id="btnMLDING" runat="server" Text="Update WNFM Wheel" CssClass="button button2"></asp:Button></TD>
						</TR>
						<TR>
							<TD>Search for MOPO Wheels based on :</TD>
						</TR>
					</TABLE>
					<asp:Panel id="pnlSearch" runat="server">
						<TABLE id="Table7" class="table">
							<TR>
								<TD vAlign="top" align="left">
									<asp:RadioButtonList id="rblSearch" runat="server" RepeatLayout="Flow" CssClass="rbl" AutoPostBack="True">
										<asp:ListItem Value="1">Selected WhlNo , WhlType , YearOfManf</asp:ListItem>
										<asp:ListItem Value="2">Selected HeatNo</asp:ListItem>
										<asp:ListItem Value="3">Engraved Number</asp:ListItem>
									</asp:RadioButtonList></TD>
								<TD></tr></TABLE>
									<asp:Panel id="List1" runat="server">
										<TABLE id="Table8" class="table">
											<TR>
												<TD>WhlNo</TD>
												<TD>WhlType</TD>
												<TD>YearOfManf</TD>
											</TR>
											<TR>
												<TD>
													<asp:TextBox id="List1a" runat="server" CssClass="form-control"></asp:TextBox></TD>
												<TD>
													<asp:TextBox id="List1b" runat="server" CssClass="form-control"></asp:TextBox></TD>
												<TD>
													<asp:TextBox id="List1c" runat="server" CssClass="form-control"></asp:TextBox></TD>
											</TR>
										</TABLE>
									</asp:Panel>
									<asp:Panel id="List2" runat="server">
										<TABLE id="Table9" class="table">
											<TR>
												<TD>HeatNo</TD>
											</TR>
											<TR>
												<TD>
													<asp:TextBox id="List2a" runat="server" CssClass="form-control"></asp:TextBox></TD>
											</TR>
										</TABLE>
									</asp:Panel>
									<asp:Panel id="List3" runat="server">
										<TABLE id="Table10" class="table">
											<TR>
												<TD>WheelNo</TD>
												<TD>YearOfManf</TD>
											</TR>
											<TR>
												<TD>
													<asp:TextBox id="List3a" runat="server" CssClass="form-control"></asp:TextBox></TD>
												<TD>
													<asp:TextBox id="List3b" runat="server" CssClass="form-control"></asp:TextBox></TD>
											</TR>
										</TABLE>
									</asp:Panel>
							
						
						<TABLE id="Table6" class="table">
							<TR>
								<TD align="middle">
									<asp:Button id="btnSearch" runat="server" Text="Search" CssClass="button button2"></asp:Button></TD>
							</TR>
						</TABLE>
						<asp:DataGrid id="DataGrid2" runat="server" BackColor="White" CellPadding="4" BorderWidth="1px" CssClass="table" BorderStyle="None" BorderColor="#3366CC">
							<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
							<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
							<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
							<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid>
					</asp:Panel>
				</asp:Panel>
			</asp:panel></div></div></form></div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
