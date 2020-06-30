<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WaterHardnessQuerry.aspx.vb" Inherits="WebApplication2.WaterHardnessQuerry" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>WaterHardnessQuerry</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
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
	<body MS_POSITIONING="GridLayout" bgColor="#b6dcf5">
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
        <hr class="prettyline" />
			<div class="container">
		<form id="Form2" method="post" runat="server">
             <div class="row">
    
                  <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" CssClass="form-control ll" OnSelectedIndexChanged="dd1_SelectedIndexChanged"  Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
      </div>
            <div class="table-responsive">
			<asp:Panel id="Panel1" runat="server">
				<TABLE id="Table1" class="table">
					<TR>
						<TD colSpan="3"><FONT size="5">Industrial Cooling water report as on
								<asp:TextBox id="txtDate" runat="server" AutoPostBack="True" CssClass="form-control"></asp:TextBox>&nbsp;&nbsp;&nbsp;
								<asp:CheckBox id="chkRefersh" runat="server" AutoPostBack="True" CssClass="checkbox" Text="Refersh"></asp:CheckBox></FONT></TD>
					</TR>
					<TR>
						<TD colSpan="3">
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
					</TR>
					<TR>
						<TD colSpan="3">A&nbsp;) Hardness values of water in ppm</TD>
					</TR>
				</TABLE>
				<asp:DataGrid id="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<Columns>
						<asp:BoundColumn DataField="Date" HeaderText="Date"></asp:BoundColumn>
						<asp:BoundColumn DataField="Time" HeaderText="Time"></asp:BoundColumn>
						<asp:BoundColumn DataField="Raw Water" HeaderText="Raw Water"></asp:BoundColumn>
						<asp:BoundColumn DataField="After Softning" HeaderText="After Softning"></asp:BoundColumn>
						<asp:BoundColumn DataField="Cold Water" HeaderText="Cold Water"></asp:BoundColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
				<TABLE id="Table2" class="table">
					<TR>
						<TD>B ) No. of hours Softening Plant worked
							<asp:Label id="lblSofteningHrs" runat="server" Font-Underline="True"></asp:Label>&nbsp;Hrs</TD>
					</TR>
					<TR>
						<TD>C ) Qty of water added through Softener :
							<asp:Label id="lblSoft_Qty" runat="server" Font-Underline="True"></asp:Label>&nbsp;Lts</TD>
					</TR>
					<TR>
						<TD>D ) Qty of water added&nbsp;by-passing Softener :
							<asp:Label id="lblByPass_Qty" runat="server" Font-Underline="True"></asp:Label>&nbsp;Lts</TD>
					</TR>
					<TR>
						<TD>E ) Total water added to system :
							<asp:Label id="lblTotal_Qty" runat="server" Font-Underline="True"></asp:Label>&nbsp;Lts</TD>
					</TR>
				</TABLE>
				<TABLE id="Table3" class="table">
					<TR>
						<TD>From&nbsp;Date</TD>
						<TD>:</TD>
						<TD>
							<asp:textbox id="txtFromDate" runat="server" CssClass="form-control"></asp:textbox></TD>
					</TR>
					<TR>
						<TD>To Date</TD>
						<TD>:</TD>
						<TD>
							<asp:textbox id="txtToDate" runat="server" CssClass="form-control"></asp:textbox>
							<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="txtToDate" ErrorMessage="*"></asp:RequiredFieldValidator></TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="3">
							<asp:Button id="btnPoNo" runat="server" CssClass="button button2" Text="Get DATA"></asp:Button>
							<asp:CustomValidator id="CustomValidator1" runat="server" ControlToValidate="txtToDate" ErrorMessage="CustomValidator"></asp:CustomValidator></TD>
					</TR>
				</TABLE>
				<asp:DataGrid id="DataGrid2" runat="server" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC">
					<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
					<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
					<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
				</asp:DataGrid>
			</asp:Panel>
			<asp:Panel id="Panel2" runat="server"></asp:Panel>
		</form>
                 <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
