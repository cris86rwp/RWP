<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BreakDownMemoEdit.aspx.vb" Inherits="WebApplication2.BreakDownMemoEdit" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML >
<HTML>
	<HEAD runat="server">
		<title>BreakDownMemo Edit</title>
		<LINK id="mss" href="/wap.css" rel="stylesheet"/>
		<META content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<META content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<META content="JavaScript" name="vs_defaultClientScript"/>
		<META content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
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
        <link rel="stylesheet" href="../../StyleSheet1.css" />
	</HEAD>
	<BODY >

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
        <FORM id="Form1" method="post" runat="server">
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
			<asp:Panel id="Panel1"  runat="server">
				<TABLE id="Table2" class="table" >
					<TR>
						<TD align="middle" colSpan="6"><FONT size="3">BreakDown Edit</FONT><hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD colSpan="6">
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
					</TR>
					<TR>
						<TD>Department</TD>
						<TD>:</TD>
						<TD>
							<asp:label id="lblDepartment_code" runat="server" >M</asp:label></TD>
						<TD>Shop Code
							<asp:checkbox id="chkExtEdit" runat="server" AutoPostBack="True" Text="Ext.Edit" CssClass="checkbox"></asp:checkbox></TD>
						<TD>:</TD>
						<TD>
							<asp:radiobuttonlist id="rblShop" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl"></asp:radiobuttonlist></TD>
					</TR>
					<TR>
						<TD>Group</TD>
						<TD>:</TD>
						<TD>
							<asp:label id="lblGroupCode" runat="server"></asp:label></TD>
						<TD>Operator</TD>
						<TD></TD>
						<TD>
							<asp:textbox id="txtOperator" runat="server" CssClass="form-control"></asp:textbox></TD>
					</TR>
					<TR>
						<TD>Memo No.</TD>
						<TD>:</TD>
						<TD>
							<asp:label id="lblMemoNumber" runat="server"></asp:label></TD>
						<TD>Machine Code</TD>
						<TD></TD>
						<TD>
							<asp:label id="lblMachineCode" runat="server"></asp:label></TD>
					</TR>
					<TR>
						<TD>Memo Slip No.</TD>
						<TD>:</TD>
						<TD>
							<asp:label id="lblMemoSlipNumber" runat="server" ></asp:label></TD>
						<TD>BDCodeType</TD>
						<TD>:</TD>
						<TD>
							<asp:label id="lblBDCodeType" runat="server"></asp:label></TD>
					</TR>
					<TR>
						<TD>Break Down Details</TD>
						<TD></TD>
						<TD>
							<asp:customvalidator id="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ControlToValidate="txtBDnToTime"></asp:customvalidator></TD>
						<TD>Production Affected</TD>
						<TD></TD>
						<TD>
							<asp:dropdownlist id="ddlProductionAffected" runat="server" CssClass="form-control ll">
								<asp:ListItem Value="1">Yes</asp:ListItem>
								<asp:ListItem Value="0" Selected="True">No</asp:ListItem>
							</asp:dropdownlist></TD>
					</TR>
					<TR>
						<TD>From date</TD>
						<TD></TD>
						<TD>
							<asp:textbox id="txtBDnFromDate" runat="server" CssClass="form-control" Enabled="False" MaxLength="10"></asp:textbox>(dd/mm/yy)</TD>
						<TD>To Date</TD>
						<TD></TD>
						<TD>
							<asp:textbox id="txtBDnToDate" runat="server" CssClass="form-control" MaxLength="10" placeholder="1/1/1990"></asp:textbox>
							<asp:rangevalidator id="Rangevalidator1" runat="server" ErrorMessage="*" ControlToValidate="txtBDnToDate" Type="Date" MinimumValue="1/1/1990" MaximumValue="1/1/9999"></asp:rangevalidator>(dd/mm/yy)</TD>
					</TR>
					<TR>
						<TD>Time</TD>
						<TD></TD>
						<TD>
							<asp:textbox id="txtBDnFromTime" runat="server" CssClass="form-control" Enabled="False" MaxLength="10"></asp:textbox>(hh:mm)</TD>
						<TD>Time</TD>
						<TD></TD>
						<TD>
							<asp:textbox id="txtBDnToTime" runat="server" CssClass="form-control" MaxLength="10"></asp:textbox>(hh:mm 
							)</TD>
					</TR>
					<TR>
						<TD>
							<asp:label id="Label1" runat="server" Visible="False">Total Time loss : </asp:label></TD>
						<TD></TD>
						<TD>
							<asp:label id="lblTotal_time" runat="server" Visible="False"></asp:label></TD>
						<TD></TD>
						<TD></TD>
						<TD></TD>
					</TR>
					<TR>
						<TD>Remarks</TD>
						<TD>:</TD>
						<TD colSpan="4">
							<asp:textbox id="txtRemarks" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:textbox></TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="6">
							<asp:button id="btnSave" runat="server" Text="Save" Font-Size="Smaller" Font-Names="Arial" CssClass="button button2" ></asp:button>
							<asp:button id="btnClear" runat="server"  Text="Clear"  Font-Size="Smaller" Font-Names="Arial"  CausesValidation="False" CssClass="button button2"></asp:button>
							<asp:button id="btnExit" runat="server" Text="Exit" Font-Size="Smaller" Font-Names="Arial"  CausesValidation="False" CssClass="button button2"></asp:button></TD>
					</TR>
				</TABLE>
				<asp:datagrid id="DataGrid1" runat="server" BorderStyle="None" CellPadding="4" BackColor="White" BorderWidth="1px" BorderColor="#CC9966" CssClass="table">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:datagrid>
			</asp:Panel>
                    </div></div>
		</FORM>
            </div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</BODY>
</HTML>
