<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BHNSampleSend.aspx.vb" Inherits="WebApplication2.BHNSampleSend" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>BHNSampleSend</title>
		<LINK id="mss" href="/wap.css" rel="stylesheet">
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">

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
     <link rel="stylesheet" href="../../../../StyleSheet1.css" />
	</HEAD>
	<body >
          <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
   <a class="navbar-brand p-0" href="#"><img src="../../../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../../../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
<!--/.Navbar -->
        <div class="container">
		<form id="Form1" method="post" runat="server">
            <div class="row"><div class="table-responsive">
			<TABLE id="Table1" class="table">
				<TR>
					<TD align="middle" width="100%" colSpan="3">BHN Sample<hr class="prettyline" /></TD>
				</TR>
				<TR>
					<TD align="right" width="100%" colSpan="3"><asp:label id="lblMode" runat="server" ForeColor="Blue" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" Width="101px"></asp:label></TD>
				</TR>
				<TR>
					<TD align="left" width="100%" colSpan="3" rowSpan="1"><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></TD>
				</TR>
				<TR>
					<TD align="left" width="100%" colSpan="3"><asp:label id="lblLab" runat="server" Visible="False">Lab Number : </asp:label><asp:label id="lblLab_Number" runat="server" Visible="False"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Shift 
						Code&nbsp; :&nbsp;&nbsp;
						<asp:DropDownList id="cboShift_Code" runat="server" CssClass="form-control ll">
							<asp:ListItem Value="0">A</asp:ListItem>
							<asp:ListItem Value="1">B</asp:ListItem>
							<asp:ListItem Value="2">C</asp:ListItem>
						</asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						Inspector&nbsp; :
						<asp:TextBox id="txtInspector" runat="server" CssClass="form-control"></asp:TextBox>
						<asp:RequiredFieldValidator id="rfInsp" runat="server" ControlToValidate="txtInspector" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD >Sent Date</TD>
					<TD><asp:textbox id="txtDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtDate"></asp:requiredfieldvalidator><asp:rangevalidator id="RangeValidator1" runat="server" ErrorMessage="Incorrect Date" ControlToValidate="txtDate" Type="Date" MaximumValue="1/1/9999" MinimumValue="1/1/1900"></asp:rangevalidator></TD>
					<TD ></TD>
				</TR>
				<TR>
					<TD ></TD>
					<TD >From</TD>
					<TD >To</TD>
				</TR>
				<TR>
					<TD>Last heat range selected</TD>
					<TD><asp:label id="lblFrom" runat="server" Width="50px"></asp:label></TD>
					<TD><asp:label id="lblTo" runat="server" Width="50px"></asp:label></TD>
				</TR>
				<TR>
					<TD>Enter&nbsp;Heat Range</TD>
					<TD><asp:textbox id="txtHeatFrom" runat="server" CssClass="form-control" AutoPostBack="True" ></asp:textbox>
						<asp:RequiredFieldValidator id="rfvfrheat" runat="server" ControlToValidate="txtHeatFrom" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator></TD>
					<TD><asp:textbox id="txtHeatTo" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox>
						<asp:RequiredFieldValidator id="rfvtoheat" runat="server" ControlToValidate="txtHeatTo" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD>Enter Wheel Number</TD>
					<TD><asp:textbox id="txtWheelNumber" runat="server" CssClass="form-control"></asp:textbox>&nbsp;&nbsp;&nbsp;
						<asp:RequiredFieldValidator id="rfvwheel" runat="server" ControlToValidate="txtWheelNumber" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter 
						Heat Number</TD>
					<TD><asp:textbox id="txtHeatNumber" runat="server"  AutoPostBack="True" CssClass="form-control"></asp:textbox>
						<asp:RequiredFieldValidator id="rfvheat" runat="server" ControlToValidate="txtHeatNumber" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD >Wheel Type</TD>
					<TD colSpan="3" >
						<asp:label id="lblDescription" runat="server" ForeColor="Red"></asp:label></TD>
				</TR>
				<TR>
					<TD colSpan="3"></TD>
				</TR>
				<TR>
					<TD></TD>
					<TD></TD>
					<TD></TD>
				</TR>
				<TR>
					<TD align="middle"  colSpan="3"><asp:button id="btnSubmit_Clicks" runat="server" Font-Names="Arial" Font-Size="Smaller" CssClass="button button2" Text="Save" BorderStyle="Groove"></asp:button><asp:button id="btnCancel" runat="server" Font-Names="Arial" Font-Size="Smaller" Width="71px" Height="24px" Text="Clear" BorderStyle="Groove"></asp:button><asp:button id="btnExit" runat="server" Font-Names="Arial" Font-Size="Smaller" Width="71px" Height="24px" Text="Exit" BorderStyle="Groove" CausesValidation="False"></asp:button></TD>
				</TR></TABLE>
				<asp:datagrid id="grdReadings" runat="server" CssClass="table" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" OnEditCommand="EditRow" OnUpdateCommand="UpdateRow" OnCancelCommand="CancelOperation" OnDeleteCommand="DeleteRow" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#738A9C"></SelectedItemStyle>
							<ItemStyle ForeColor="#8C4510" BackColor="#FFF7E7"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#A55129"></HeaderStyle>
							<FooterStyle ForeColor="#8C4510" BackColor="#F7DFB5"></FooterStyle>
							<Columns>
								<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
								<asp:BoundColumn DataField="wheel_number" HeaderText="Wheel Number"></asp:BoundColumn>
								<asp:BoundColumn DataField="heat_number" HeaderText="Heat Number"></asp:BoundColumn>
								<asp:BoundColumn DataField="description" HeaderText="Wheel Type"></asp:BoundColumn>
								<asp:BoundColumn DataField="heat_from" HeaderText="Heat From"></asp:BoundColumn>
								<asp:BoundColumn DataField="heat_to" HeaderText="Heat To"></asp:BoundColumn>
								<asp:BoundColumn DataField="sent_date" HeaderText="Sent Date"></asp:BoundColumn>
								<asp:BoundColumn DataField="lab_number" HeaderText="Lab Number"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="#8C4510" Mode="NumericPages"></PagerStyle>
						</asp:datagrid>
			
			&nbsp;
                </div></div>
		</form>
            </div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</HTML>
